decl
	integer status;
	string filename;
enddecl
integer main()
{
	print("Enter filename");
	read(filename);
	print("--------------");
	status = Delete(filename);
	
	if(status==0) then
		print("File Deleted");
	else
		print("Error!!not deleted");
	endif;
	return 0;
}
