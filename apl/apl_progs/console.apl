decl
	string file;
	integer status,waitParent,exec,parentID;
enddecl

integer main()
{

	print("---------------------");
	while(1<2) do
		print("Enter Command : ");
		read (file);
		
		if(file=="exit") then

			Exit();
		else
			status = Fork();	
			if(status == -1) then 
				print("Fork Error!!");
			else
				if(status==-2) then
					parentID=Getppid();
					//print("PID => ");
					//print(Getpid());
					//print("PPID => ");
					//print(parentID);
					waitParent=Wait(parentID);
					continue;
				else
					exec=Exec(file);
					if(exec==-1) then
						print("Exec Error!!!");
						Exit();
					endif;
				endif;
			endif;
		endif;
	endwhile;

return 0;
}
