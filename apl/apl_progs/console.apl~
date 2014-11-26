decl
	string file;
	integer status,waitParent,exec,parentID;
enddecl

integer main()
{

	print("---------------------");
	while(1<2) do
		print("Enter help OR ");
		print("Enter Command : ");
		read (file);
	
		if(file=="help") then
			print("COMMANDS");
			print("---------");
			print("exit");
			print("create");
			print("read");
			print("delete");
			print("open");
			read(file);
		endif;
		if(file=="exit") then

			Exit();
		else
			if(file=="create") then
				file="create.xsm";
			else if(file=="delete") then
					file="delete.xsm";
				else if(file=="read") then
						file="read.xsm";
					else if(file=="open") then
							file="open.xsm";
						else
							file=file;
						endif;
					endif;
				endif;
			endif;

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
