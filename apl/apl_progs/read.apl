
decl
	integer status,desc;
	string filename,str;
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

	status = Read(desc,str);

	print(status);

	if(status==-1) then
		print("Read_Error!");
	else
		print("Read Success!");
		print(str);

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
