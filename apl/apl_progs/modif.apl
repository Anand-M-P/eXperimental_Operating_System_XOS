integer main()
{
	integer pid1,pid2,pid3,pid4,i;
	i=0;
	pid1 = Fork();
	pid2 = Fork();
	pid3 = Fork();
	pid4 = Fork();

	if(pid1 == -2) then
		print(i+10);
	endif;

	if(pid2 == -2) then
		print(i+20);
	endif;

	if(pid3 == -2) then
		print(i+30);
	endif;
	
	if(pid4 == -2) then
		print(i+40);
	endif;

	return 0;
}
