decl
	integer a[10],bubblesort();
enddecl
integer bubblesort()
{
	integer i,j,k;
	i=0;
	while i<10 do
		j=9;
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
	file = Open("num1.dat");	
	i=0;
	
	while i<10 do
		b = Read(file, c);
		//print(b);
		print(c);//print the word read
		a[i] = c;
		i=i+1;
	endwhile;
	breakpoint;
	i=bubblesort();
	print("after sorting");
	b = Seek(file, 0);
	i=0;

	
	while i<10 do
		print(a[i]);
		b = Write(file, a[i]);
		i=i+1;
	endwhile;
	b = Close(file);
	print("success");
	return 0;
}
