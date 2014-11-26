decl
	integer sone,stwo,i,fdone,fdtwo,status;
enddecl

integer main()
{	

	
	i=20;
	sone=Create("num1.dat");
	stwo=Create("num2.dat");
	fdone=Open("num1.dat");
	fdtwo=Open("num2.dat");
	while(i>=0) do
		if((i%2)!=0) then
			status=Write(fdone,i);
		else
			status=Write(fdtwo,i);
		endif;
		i=i-1;
	endwhile;

	status=Close(fdone);
	status=Close(fdtwo);
	return 0;
}
