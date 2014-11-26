decl
	integer n;
enddecl
integer main()
{
	n=0;
	print("even_num");
	while(n<=20) do
		if(n%2==0) then
			print(n);
		endif;
	n=n+1;
	endwhile;
	return 0;

}
