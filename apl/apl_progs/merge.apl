integer main()
{
  integer  status,pid1,pid2;

  pid1 = Fork();
	if(pid1==-2) then
		status=Exec("sort1.xsm");
	endif;

 print("Sort1 Done");l

  pid2 = Fork();
	if(pid2==-2) then
		status=Exec("sort2.xsm");
	endif;

 return 0;
}
