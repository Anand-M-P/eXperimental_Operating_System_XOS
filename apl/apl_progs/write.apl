decl
	integer status,desc;
	string filename;
enddecl
integer main()
{

	desc=-1;
	
	print("Enter filename");
	read(filename);
	
	print("--------------");
	
	desc = Open(filename);
	
	if(desc!=-1) then
		print("File Decrptr=");
		print(desc);
	else
		print("Error!!not opened");
	endif;


	status = Write(desc,"HelloWorld");
	
	if(status==0)then
		print("Write Success!");
	else
		print("Write failed!");
	endif;


	status = Close(desc);
	
	if(status==0) then
		print("File Closed");
		print(status);
	else
		print("Error!!not Closed");
	endif;	
	return 0;
}























	
