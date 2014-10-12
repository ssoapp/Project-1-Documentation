//118 62 14
//10 1MM 3



	module groove(){
	rotate(20, 0, 0)
	//scale([45, 1, 1])
	cube ([45, 1, 1]);
	}//groove module

	module keyhole(){ 
	rotate(20, 0, 0)
	//scale([60, 10, 3])
	cube ([60, 10, 3]);
	}//keyhold module

	module drillhole(){
	translate([31, 7,7 ])
	cylinder(h=16,r=2,$fn=100, center=true);
	translate([31,7,13.5])
	cylinder(h1=3,r1=2, r2=4.25);
	}

	module base(){
	//hull (){
	cube ([62, 130, 14]);
		/*translate([1,1,0])
		cylinder(h=14,r=2);
		translate([1,129,0])
		cylinder(h=14,r=2);
		translate([61,129,0])
		cylinder(h=14,r=2);
		translate([61,1,0])
		cylinder(h=14,r=2);*/
	//}//end hull
	}//end base


union (){
difference (){
base();

translate([0,25,5.5])
	keyhole();

translate([0,60,5.5])
	keyhole();

translate([0,95,5.5])
	keyhole();

	drillhole();
translate([0, 117, 0])
	drillhole();
}//difference

//grooves
color ("cyan", a=1.0)
translate([.5,29,5.5])
	groove();
translate([.5,64,5.5])
	groove();
translate([.5,99,5.5])
	groove();


//holder section

difference (){
color ("green", a=1.0)
translate([0 , 83.5, 13])
scale([62, 35, 16])
	cube (1, 1, 1);

translate([2.5 , 81.5, 13])
	cube ([57, 33, 13]);
}//end difference




}//end union






