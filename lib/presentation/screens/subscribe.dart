import 'package:flutter/material.dart';

class Subscribe extends StatefulWidget {
  const Subscribe({super.key});
 

  @override
  State<Subscribe> createState() => _SubscribeState();
}

class _SubscribeState extends State<Subscribe> {
   final _formKey = GlobalKey<FormState>();

   late TextEditingController _nameController;
   late TextEditingController _emailController;
late TextEditingController _passwordController;
late TextEditingController _phoneController;


    @override
    void initState(){
      super.initState();
      _nameController= TextEditingController();
      _emailController = TextEditingController();
_passwordController = TextEditingController();
_phoneController = TextEditingController();
    }


bool _isObscure = true;

String? ville = 'Sfax';
var items = [
'Sfax',
'Tunis',
'Sousse',
'Gabes'
];




  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(
        title:const Text("Subscribe")
      ),
      body: Form(
        key: _formKey,
        child:  Column(
          children: [
            TextFormField(
              controller: _nameController,
              decoration:const InputDecoration(
                icon:Icon(Icons.person),
                labelText: "Name",
                hintText: "Please Enter Name"

              ),
              validator: (value) {
if (value!.isEmpty) {
return 'Please enter your name';
}
return null;
},

              
            
            ),
TextFormField(
  controller: _emailController,
decoration: const InputDecoration(
icon: Icon(Icons.email),
hintText: "Enter your Email",
labelText: "Email"),
),



TextFormField(
  obscureText: _isObscure,
  controller: _passwordController,
decoration: const InputDecoration(
icon: Icon(Icons.key),
hintText: "Enter your password",
labelText: "Password"),
),




TextFormField(
controller: _phoneController,
decoration: const InputDecoration(
icon: Icon(Icons.phone),
hintText: "Enter your phone",
labelText: "Phone"),
),
DropdownButton(
value: ville,
icon: const Icon(Icons.keyboard_arrow_down),
items: items.map((items) {
return DropdownMenuItem(value: items, child: Text(items));
}).toList(),
onChanged: (String? newValue) {
setState(() {
ville = newValue;
});
},
),
Center(
child: ElevatedButton(
onPressed: () {
// Retourne true si le formulaire est valide, sinon false
if (_formKey.currentState!.validate()) {
  print(_nameController.text);
print(_emailController.text);
print(_passwordController.text);
print(_phoneController.text);
print(ville);
// Affiche le Snackbar si le formulaire est valide
ScaffoldMessenger.of(context).showSnackBar(
const SnackBar(content: Text('Processing Data')),
);
}
},
style: ButtonStyle(
backgroundColor: WidgetStateProperty.all<Color>(
Colors.greenAccent,
),
),
child: const Text("submit"),
),
),
          ],
        ),
        ),
    );
  }
}