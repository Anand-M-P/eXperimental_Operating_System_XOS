decl
	integer n,i,flag,m;
enddecl
integer main(){
	flag=1;
	read(n);
	while(i<n) do
		m=2;
		while(m<=i) do
			if(i%m==0) then
				flag=0;
				m=m+1;
			else
				m=m+1;
			endif;
			
		endwhile;
		if(flag!=1) then
			print(i);
			i=i+1;
		else
			i=i+1;			
		endif;
	endwhile;
	return 0;
}
				
		
	
