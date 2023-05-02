<?php
$route = array(
    'Rajshahi' =>array('Mymensingh' => 240,
        'Dhaka' => 250,
        'Barisal' => 360),
    'Mymensingh' => array('Rajshahi' => 240,
        'Dhaka'=> 110,
        'Habiganj'=>310),
    'Chattagram' => array('Habiganj' => 290,
        'Barisal' =>230),
    'Dhaka' => array('Rajshahi' => 250,
        'Mymensingh' => 110,
        'Habiganj' => 170,
        'Barisal' =>250),
    'Habiganj' => array('Mymensingh'=>310,
        'Chattagram' => 290,
        'Dhaka' => 170,
        'Barisal' => 340),
    'Barisal' => array('Rajshahi'=>360,
        'Chattagram'=>230,
        'Dhaka' => 250,
        'Habiganj' => 340)
);
class Dijkstra
{
	protected array $route;
	
	public function __construct($route)
	{
		$this->route = $route;
	}
	
	public function shortestPath($source, $target): void
	{
		echo "Shortest route from $source to $target: ";
		
		// to hold best estimates of shortest path modes
		$paths = array();
		//to hold predecessors for each node
		$previous_paths = array();
		// to queue the non-optimized nodes
		$queue = new SplPriorityQueue();
		foreach ($this->route as $v => $adj) {
			// set initial distance to "infinity"
            $paths[$v] = INF;
            // no previous path yet
            $previous_paths[$v] = null;
            foreach ($adj as $w =>$distance){
                // use the shortest distance
                $queue->insert($w, $distance);
            }
		}
        // initial distance at source is 0
        $paths[$source] = 0;
        while (!$queue->isEmpty()){
            // extract min distance
            $u = $queue->extract();
            if (!empty($this->route[$u])){
                // "relax" each adjacent vertex
                foreach ($this->route[$u] as $v => $distance){
                    // alternate route length to adjacent nodes
                    $alt = $paths[$u] + $distance;

                    // if alternate route is shorter
                    if ($alt < $paths[$v]){
                        // update minimum length to nodes
                        $paths[$v] = $alt;
                        // add nodes to previous pah
                        $previous_paths[$v] = $u;
                    }
                }
            }
        }
        // get the shortest path using reverse iteration
        // the shortest path with a stack
        $stack = new SplStack();
        $via = $target;
        $dist = 0;
        // traverse from target to source
        while (isset($previous_paths[$via]) && $previous_paths[$via]){
            $stack->push($via);
            // add distance to predecessor
            $dist += $this->route[$via][$previous_paths[$via]];
            $via = $previous_paths[$via];
        }
        // stack will be empty if there is no route back
        if ($stack->isEmpty()){
            echo "No route from $source to $target";
        }else{
            // add and print the path in reverse
            $stack->push($source);
            $sep = "";
            foreach ($stack as $v){
                echo $sep, $v;
                $sep = '->';
            }echo "($dist KM) \n";
        }

	}
}
$itenary = new Dijkstra($route);
$itenary->shortestPath('Dhaka', 'Chattagram');
$itenary->shortestPath('Rajshahi', 'Habiganj');
$itenary->shortestPath('Chattagram', 'Rajshahi');
$itenary->shortestPath('Habiganj', 'Mymensingh');
$itenary->shortestPath('Rajshahi', 'Coxsbazar');
