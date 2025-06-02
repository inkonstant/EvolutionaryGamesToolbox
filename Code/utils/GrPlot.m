function SC=GrPlot(fname)

	load(fname);

	G = digraph(mc.P);

	G = rmedge(G, 1:numnodes(G), 1:numnodes(G));



	l1=Sta2Num001([N 0 0],S);

	l2=Sta2Num001([0 N 0],S);

	l3=Sta2Num001([0 0 N],S);

	SC=PP(:,[l2 l1 l3]);

	for l=1:L

		if min(min(SC))==-inf

			SC(l,:)=[1 1 1];

		else

			SC(l,:)=SC(l,:)/(sum(SC(l,:)+0.01));

		end

	end



	G = digraph(mc.P);

	G = rmedge(G, 1:numnodes(G), 1:numnodes(G));

	figure(2); plot(G,'XData',S(:,2),'Ydata',S(:,3),'NodeColor',SC)

end