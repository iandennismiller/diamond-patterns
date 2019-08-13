$if(titleblock)$
$titleblock$
$endif$

$for(header-includes)$
$header-includes$
$endfor$

$if(toc)$
$table-of-contents$
$endif$

$for(include-before)$
$include-before$
$endfor$

$body$

$for(include-after)$
$include-after$
$endfor$
