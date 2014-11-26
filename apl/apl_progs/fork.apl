integer main()
{
	integer pid;
	print ("Before Fork");
	Exit();
	pid = Fork();
	print ("After Fork");
	
	return 0;
}
