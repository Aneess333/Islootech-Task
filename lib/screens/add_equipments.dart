import 'package:flutter/material.dart';
import 'package:islo_tech_test/models.dart';
import 'package:islo_tech_test/modules/decoration_box.dart';


class AddEquipment extends StatefulWidget  {
  const AddEquipment({Key? key}) : super(key: key);

  @override
  _AddEquipmentState createState() => _AddEquipmentState();
}

class _AddEquipmentState extends State<AddEquipment> {
  List<String> categories = ['Category A', 'Category B', 'Category C'];
  List<String> products = ['Product 1', 'Product 2', 'Product 3'];
  List<String> capacity = ['1', '2', '3'];
  List<String> make = ['Make 1', 'Make 2', 'Make 3'];
  List<String> model = ['Model A', 'Model B', 'Model C'];
  List<String> year = ['2019', '2020', '2021'];
  final _form = GlobalKey<FormState>();
  List<EquipmentModel> equipmentList = [];
  late dynamic selectedCategory;
  late dynamic selectedProduct;
  late dynamic selectedCapacity;
  late dynamic selectedMake;
  late dynamic selectedModel;
  late dynamic selectedYear;
  int equipmentsList = 1;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedCategory = null;
    selectedProduct = null;
    selectedCapacity = null;
    selectedMake = null;
    selectedModel = null;
    selectedYear = null;
    equipmentList.add(EquipmentModel());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu, color: Color(0xFFc7960d),),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          GestureDetector(
            onTap: (){},
            child: Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Stack(
                clipBehavior: Clip.hardEdge,
                alignment: Alignment.center,
                children: [
                  Positioned(
                    bottom: 30,
                    left: 16,
                    child: Container(height: 8,width: 8,decoration: BoxDecoration(
                        color: Colors.redAccent,
                        borderRadius: BorderRadius.circular(10)
                    ),),
                  ),
                  const Icon(Icons.notifications_none_outlined, color: Color(0xFFc7960d)),
                ],
              ),
            ),
          )

        ],
        title: const Text('Equipments',style: TextStyle(color: Color(0xFFc7960d)),),
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(12),
              bottomLeft: Radius.circular(12)
            ),
            color: Color(0xFF2a2f35)
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Form(
                key: _form,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: equipmentList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(height: 50,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(height: 25,width: 25,decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFFffc400)
                          ),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text('${index+1}',style: const TextStyle(
                                  color: Colors.white
                              ),),
                            ),
                          ),
                          const SizedBox(width: 10.0,),
                          const Text('Add your Equipment here.',style: TextStyle(fontWeight: FontWeight.w700),),

                        ],
                      ),
                      const SizedBox(height: 26.0,),
                      Column(
                        children: [
                          DropdownButtonFormField(
                            decoration: inputDecoration,
                            value: selectedCategory,
                            items: categories.map((String item){
                              return DropdownMenuItem<String>(child: Text(item), value: item,);
                            }).toList(),
                            hint: const Text('Select Category'),
                            icon: const Icon(Icons.arrow_drop_down, color: Color(0xFFd0d0d0),),
                            validator: (value) => value == null ? "Select a category" : null,
                            onChanged: (dynamic newValue){
                              setState(() {
                                selectedCategory = newValue!;
                              });

                            },
                          ),
                          const SizedBox(height: 10.0,),
                          DropdownButtonFormField(
                            decoration: inputDecoration,
                            value: selectedProduct,
                            items: products.map((String item){
                              return DropdownMenuItem<String>(child: Text(item), value: item,);
                            }).toList(),
                            hint: const Text('Product'),
                            icon: const Icon(Icons.arrow_drop_down, color: Color(0xFFd0d0d0),),
                            validator: (value) => value == null ? "Select a product" : null,
                            onChanged: (dynamic newValue){
                              setState(() {
                                selectedProduct = newValue!;
                              });

                            },
                          ),
                          const SizedBox(height: 10.0,),
                          DropdownButtonFormField(
                            decoration: inputDecoration,
                            value: selectedCapacity,
                            items: capacity.map((String item){
                              return DropdownMenuItem<String>(child: Text(item), value: item,);
                            }).toList(),
                            hint: const Text('Capacity'),
                            icon: const Icon(Icons.arrow_drop_down, color: Color(0xFFd0d0d0),),
                            validator: (value) => value == null ? "Select a capacity" : null,
                            onChanged: (dynamic newValue){
                              setState(() {
                                selectedCapacity = newValue!;
                              });

                            },
                          ),
                          const SizedBox(height: 10.0,),
                          DropdownButtonFormField(
                            decoration: inputDecoration,
                            value: selectedMake,
                            items: make.map((String item){
                              return DropdownMenuItem<String>(child: Text(item), value: item,);
                            }).toList(),
                            hint: const Text('Make'),
                            icon: const Icon(Icons.arrow_drop_down, color: Color(0xFFd0d0d0),),
                            validator: (value) => value == null ? "Select a make" : null,
                            onChanged: (dynamic newValue){
                              setState(() {
                                selectedMake = newValue!;
                              });
                            },
                          ),
                          const SizedBox(height: 10.0,),
                          Row(
                            children: [
                              Expanded(child: DropdownButtonFormField(
                                decoration: inputDecoration,
                                value: selectedModel,
                                items: model.map((String item){
                                  return DropdownMenuItem<String>(child: Text(item), value: item,);
                                }).toList(),
                                hint: const Text('Model'),
                                icon: const Icon(Icons.arrow_drop_down, color: Color(0xFFd0d0d0),),
                                validator: (value) => value == null ? "Select a model" : null,
                                onChanged: (dynamic newValue){
                                  setState(() {
                                    selectedModel = newValue!;
                                  });

                                },
                              ),),
                              const SizedBox(width: 10.0,),
                              Expanded(
                                child: DropdownButtonFormField(
                                  decoration: inputDecoration,
                                  value: selectedYear,
                                  items: year.map((String item){
                                    return DropdownMenuItem<String>(child: Text(item), value: item,);
                                  }).toList(),
                                  hint: const Text('Year'),
                                  icon: const Icon(Icons.arrow_drop_down, color: Color(0xFFd0d0d0),),
                                  validator: (value) => value == null ? "Select a year" : null,
                                  onChanged: (dynamic newValue){
                                    setState(() {
                                      selectedYear = newValue!;
                                    });

                                  },
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10.0,),
                          Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  validator: (val) {

                                  },
                                  onChanged: (val) {

                                  },
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    labelText: 'Registration No.',
                                    contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(color: Color(0xFFebebeb), width: 2),
                                      borderRadius: BorderRadius.circular(35),
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: const BorderSide(color: Color(0xFFebebeb)),
                                      borderRadius: BorderRadius.circular(35),
                                    ),
                                    filled: true,
                                    fillColor: const Color(0xFFebebeb),
                                  ),),
                              ),
                              const SizedBox(height: 10.0,),
                              Expanded(
                                child: TextFormField(
                                  validator: (val) {

                                  },
                                  onChanged: (val) {

                                  },
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    labelText: 'Registration Expiry',
                                    contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(color: Color(0xFFebebeb), width: 2),
                                      borderRadius: BorderRadius.circular(35),
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: const BorderSide(color: Color(0xFFebebeb)),
                                      borderRadius: BorderRadius.circular(35),
                                    ),
                                    filled: true,
                                    fillColor: const Color(0xFFebebeb),
                                  ),),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10.0,),
                          Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  validator: (val) {

                                  },
                                  onChanged: (val) {

                                  },
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    labelText: 'Insurance No.',
                                    contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(color: Color(0xFFebebeb), width: 2),
                                      borderRadius: BorderRadius.circular(35),
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: const BorderSide(color: Color(0xFFebebeb)),
                                      borderRadius: BorderRadius.circular(35),
                                    ),
                                    filled: true,
                                    fillColor: const Color(0xFFebebeb),
                                  ),),
                              ),
                              const SizedBox(height: 10.0,),
                              Expanded(
                                child: TextFormField(
                                  validator: (val) {

                                  },
                                  onChanged: (val) {

                                  },
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    labelText: 'Insurance Expiry',
                                    contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(color: Color(0xFFebebeb), width: 2),
                                      borderRadius: BorderRadius.circular(35),
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: const BorderSide(color: Color(0xFFebebeb)),
                                      borderRadius: BorderRadius.circular(35),
                                    ),
                                    filled: true,
                                    fillColor: const Color(0xFFebebeb),
                                  ),),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10.0,),
                          Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  validator: (val) {

                                  },
                                  onChanged: (val) {

                                  },
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    labelText: '3rd Party Inspection No.',
                                    contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(color: Color(0xFFebebeb), width: 2),
                                      borderRadius: BorderRadius.circular(35),
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: const BorderSide(color: Color(0xFFebebeb)),
                                      borderRadius: BorderRadius.circular(35),
                                    ),
                                    filled: true,
                                    fillColor: const Color(0xFFebebeb),
                                  ),),
                              ),
                              const SizedBox(height: 10.0,),
                              Expanded(
                                child: TextFormField(
                                  validator: (val) {

                                  },
                                  onChanged: (val) {

                                  },
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    labelText: '3rd Party Inspection Expiry',
                                    contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(color: Color(0xFFebebeb), width: 2),
                                      borderRadius: BorderRadius.circular(35),
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: const BorderSide(color: Color(0xFFebebeb)),
                                      borderRadius: BorderRadius.circular(35),
                                    ),
                                    filled: true,
                                    fillColor: const Color(0xFFebebeb),
                                  ),),

                              ),
                            ],
                          ),
                          const SizedBox(height: 10.0,),
                          GestureDetector(
                            onTap: (){
                              setState(() {
                                equipmentList.add(EquipmentModel());
                                equipmentsList = equipmentList.length;
                              });
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(35),
                                  color: const Color(0xFFebebeb)
                              ),
                              child: const Align(alignment: Alignment.center,child: Text('Add Images',)),
                            ),
                          ),
                          const SizedBox(height: 10.0,),
                        ],
                      ),
                    ],
                  ); },

                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          equipmentList.add(EquipmentModel());
                          equipmentsList = equipmentList.length;
                        });
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            color: equipmentsList==1?const Color(0xFFffc400):const Color(0xFF2bce04)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.add,color: Colors.white,),
                            Text('Add Equipment',style: TextStyle(color: Colors.white),),
                          ],
                        ),
                      ),
                    ),
                  ),
                  equipmentsList==1?Container(width: 0,): const SizedBox(width: 10.0,),
                  equipmentsList==1?Container(width: 0,): Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          equipmentList.removeLast();
                          equipmentsList = equipmentList.length;
                        });

                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(35),
                            color: const Color(0xFFe80027)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.remove,color: Colors.white,),
                            Text('Remove Equipment',style: TextStyle(color: Colors.white),),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 10.0,),
              GestureDetector(
                onTap: (){
                  if (_form.currentState!.validate()){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>AddEquipment()));
                  }
                },
                child: Container(
                  width: MediaQuery.of(context).size.width/2,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(35),
                      color: const Color(0xFFffc400)
                  ),
                  child: const Align(alignment: Alignment.center,child: Text('Submit Equipment',style: TextStyle(color: Colors.black),)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
