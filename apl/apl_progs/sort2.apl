decl
	integer a[100],bubblesort();
enddecl
integer bubblesort()
{
	integer i,j,k;
	i=0;
	while i<100 do
		j=99;
		while j>i do
			if a[j]<a[j-1] then
				k=a[j];
				a[j]=a[j-1];
				a[j-1]=k;
			endif;
			j=j-1;
		endwhile;
		i=i+1;
	endwhile;	
	return 0;
}
integer main()
{
	integer i, file, b, c;
	file = Open("num2.dat");	
	i=0;
	
	while i<100 do
		b = Read(file, c);
		a[i] = c;
		i=i+1;
	endwhile;
	breakpoint;
	i=bubblesort();
	b = Seek(file, 0);
	i=0;
	while i<100 do
		b = Write(file, a[i]);
		i=i+1;
	endwhile;
	b = Close(file);
	return 0;
}
