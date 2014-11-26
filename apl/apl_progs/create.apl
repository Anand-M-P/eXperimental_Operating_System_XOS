decl
	integer status;
	string filename;
enddecl
integer main()
{
	print("Enter filename");
	read(filename);
	print("--------------");
	status = Create(filename);
	
	if(status==0) then
		print("File created");
	else
		print("Error!!not created");
	endif;
	return 0;
}
