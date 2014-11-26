integer main()
{
  integer status,status1,status2,status3,childpid;
  string file1,file2,choice,word;
	
  
  while(1==1) do
		
  	print("entr yr choice");		
	read(choice);
	
	if(choice=="stop") then
		print("exec compltd");
		break;
	endif;
	status=Fork();	
	if(status!=-2) then
		status1=Wait(status);
	endif;

	if(status==-2) then	
		if (choice=="copy") then
			status2=Exec("cp.xsm");
		endif;

		if(choice=="delete") then
			status2=Exec("delete.xsm");
		endif;

		if(choice=="execute") then
			status2=Exec("execute.xsm");
		endif;
		
		if(choice=="create") then
			status2=Exec("create.xsm");
		endif;
		
		if(choice=="ls") then
			status2=Exec("ls.xsm");
		endif;
		
		if(choice=="append") then
			status2=Exec("append.xsm");
		endif;

	endif;
		
	
endwhile;
return 0;
}

