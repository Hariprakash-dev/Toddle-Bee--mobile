import 'package:flutter/material.dart';
import 'package:toddle_bee_app/Colors/colors.dart';

class AddAddressScreen extends StatelessWidget {
  const AddAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
       backgroundColor: AppColors.backgroundColor,
     body: Column(
      children: [
        Container(
          height: 98,
        
          decoration:    BoxDecoration(
            
           borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(22),bottomRight: Radius.circular(22)),
           color: AppColors.appbar
          ),
          child: const Row(
            children: [
              Column(
                children: [
                  SizedBox(height: 35,),
                   IconButton(onPressed: null, icon: Icon(Icons.arrow_back,color: Colors.white,size: 35,)),
                ],
              ),
             
            ],
          ),
        ),

        Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Text(
                        "Add Address",
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                  
                  const SizedBox(
                    height: 15,
                  ),

                  
                  Row(children: [
                    Expanded(
                      child: TextFormField(

                        decoration: const InputDecoration(
                            hintText: 'Door No, Street Name',
                            hintStyle: TextStyle(
                                color: Color.fromRGBO(233, 233, 233, 1),
                                fontWeight: FontWeight.w500),
                           
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            )),
                      ),
                    ),
                  ]),

                  const SizedBox(height: 15,),



                  Row(children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                            hintText: 'Apartment Name',
                            hintStyle: TextStyle(
                                 color: Color.fromRGBO(233, 233, 233, 1),
                                fontWeight: FontWeight.w500),
                           
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            )),
                      ),
                    ),
                  ]),
                 

                   const SizedBox(
                    height: 15,
                  ),
                  Row(children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                            hintText: 'City Name',
                            hintStyle: TextStyle(
                               color: Color.fromRGBO(233, 233, 233, 1),
                                fontWeight: FontWeight.w500),
                           
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            )),
                      ),
                    ),
                  ]),

                   const SizedBox(
                    height: 15,
                  ),
                  Row(children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                            hintText: 'Landmark',
                            hintStyle: TextStyle(
                                 color: Color.fromRGBO(233, 233, 233, 1),
                                fontWeight: FontWeight.w500),
                            
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            )),
                      ),
                    ),
                  ]),
                  const SizedBox(
                    height: 15,
                  ),

                  Row(children: [
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration(
                            hintText: 'State',
                            hintStyle: TextStyle(
                               color: Color.fromRGBO(233, 233, 233, 1),
                                fontWeight: FontWeight.w500),
                            
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            )),
                      ),
                    ),

                    const SizedBox(width: 10,),
               


                  Expanded(
                    child: TextFormField(
                                    decoration: const InputDecoration(
                                        hintText: 'Pincode',
                                        hintStyle: TextStyle(
                                            color: Color.fromRGBO(233, 233, 233, 1),
                                            fontWeight: FontWeight.w500),
                                        
                                        border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.all(Radius.circular(8)),
                                        )),
                    ),
                  ),
                     ]),

                     const SizedBox(height: 15,),

                     Row(
                      children: [
                        Image.asset("assets/locationarrow.png",height: 20,width: 20,),
                        const SizedBox(width: 10,),
                        const Text("Use Current Location",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: Color.fromRGBO(37, 37, 37, 1)),)

                      ],
                     ),


                     const SizedBox(height: 15,),
                  

                 
                 
                  SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      child: const TextButton(
                          onPressed: null,
                          style: ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(
                                  Color.fromRGBO(242, 141, 30, 1)),
                              shape: WidgetStatePropertyAll(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(7))))),
                          child: Text(
                            " Sign up",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(255, 255, 255, 1)),
                          ))),


                        
                 
                 
                ],
              ),
          ),
      ],
     )
    );
  }
}