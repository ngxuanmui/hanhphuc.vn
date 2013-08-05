<?php

/**
 * Function to calculate complement
 * 
 * @param int $n
 * @return complement number
 */
function  getIntegerComplement( $n)
{
	/*
	 * change $n to binary, then split it to get array
	 * it will use to loop, then vise-versa
	 */
	$decBin = str_split(decbin($n));
	
	/* loop via array just get */
	foreach ($decBin as $key => $bin)
	{
		/* if binary number is 0, change it to 1 and vice-versa */
		if ($bin == 0)
			$decBin[$key] = 1;
		else
			$decBin[$key] = 0;
	}
	
	/* implode string convert */
	$imp = implode('', $decBin);
	
	/* change it to decimal */
	$complement = bindec($imp);
	
	return $complement;
}


echo getIntegerComplement(100);

// $fr = fopen("php://stdin", "r");
// $fw = fopen("php://stdout", "w");

// $firstLine 		= fgets(STDIN);
// $sencondLine 	= fgets(STDIN);

// $arrInput 	= explode(' ', $firstLine);
// $arrNumber 	= explode(' ', $sencondLine);

// $totalNum 	= $arrInput[0];
// $diff 		= $arrInput[1];

// sort($arrNumber);

// $count = 0;

// for ($i = $totalNum - 1; $i > 0; $i--)
// {
// 	for ($j = $i - 1; $j >= 0; $j--)
// 	{
// 		if ($arrNumber[$i] - $arrNumber[$j] == $diff)
// 			$count++;
// 	}
// }

// fprintf($fw, "%d", $count);