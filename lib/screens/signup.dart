import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:user_profile/screens/home.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();
  String email = '';
  String password = '';
  String name = '';
  String userName = '';
  String age = '';
  String birthDate = '';
  TextEditingController dateController = TextEditingController();
  bool isChecked = true;
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0XFF160062),
        centerTitle:true,title:Text(
        'Sign Up',
        style: TextStyle(
            fontFamily: GoogleFonts.gochiHand().fontFamily,
            fontSize: 36,
            fontWeight: FontWeight.w400,
            color: Colors.white),
      ),),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _loginFormKey,
            child: Padding(
              padding: const EdgeInsets.only(left: 27, right: 28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Let\'s get start',
                    style: TextStyle(
                        fontFamily: GoogleFonts.manrope().fontFamily,
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: const Color(0XFF000000)),
                  ),
                  Text(
                    'Please sign up to explore all the features',
                    style: TextStyle(
                        fontFamily: GoogleFonts.manrope().fontFamily,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: const Color(0XFF999EA1)),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Name',
                            style: TextStyle(
                                fontFamily: GoogleFonts.manrope().fontFamily,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: const Color(0XFF00004D)),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          SizedBox(
                            height: 41,
                            width: MediaQuery.of(context).size.width / 3,
                            child: Center(
                              child: TextFormField(
                                maxLines: 1,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                    contentPadding:
                                        const EdgeInsets.fromLTRB(13, 10, 0, 12),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: const BorderSide(
                                            color: Color(0XFFC6C6C6))),
                                    focusedBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0XFFC6C6C6)))),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Name is required';
                                  } else if (value.length > 25 || value.length < 2 ) {
                                    return 'Name is invalid';
                                  } else {
                                    return null;
                                  }
                                },
                                onSaved: (String? newValue) {
                                  name = newValue ?? '';
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(width: 40,),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Username',
                            style: TextStyle(
                                fontFamily: GoogleFonts.manrope().fontFamily,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: const Color(0XFF00004D)),
                          ),
                          const SizedBox(
                            height: 7,
                          ),
                          SizedBox(
                            height: 41,
                            width: MediaQuery.of(context).size.width / 3,
                            child: Center(
                              child: TextFormField(
                                maxLines: 1,
                                keyboardType: TextInputType.text,
                                decoration: InputDecoration(
                                    contentPadding:
                                        const EdgeInsets.fromLTRB(13, 10, 0, 12),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(5),
                                        borderSide: const BorderSide(
                                            color: Color(0XFFC6C6C6))),
                                    focusedBorder: const OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0XFFC6C6C6)))),       validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'UserName is required';
                                } else if (value.length > 12 || value.length < 2 ) {
                                  return 'Username is invalid';
                                } else {
                                  return null;
                                }
                              },
                                onSaved: (String? newValue) {
                                 userName = newValue ?? '';
                                },
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 7,),
                  Text(
                    'Email',
                    style: TextStyle(
                        fontFamily: GoogleFonts.manrope().fontFamily,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: const Color(0XFF00004D)),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  SizedBox(
                    height: 41,
                    child: Center(
                      child: TextFormField(
                        maxLines: 1,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.fromLTRB(13, 10, 0, 12),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide:
                                    const BorderSide(color: Color(0XFFC6C6C6))),
                            focusedBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0XFFC6C6C6)))),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Email is required';
                          } else if (!RegExp(
                                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(email)) {
                            return 'Email is invalid';
                          } else {
                            return null;
                          }
                        },
                        onSaved: (String? newValue) {
                          email = newValue ?? '';
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Password',
                    style: TextStyle(
                        fontFamily: GoogleFonts.manrope().fontFamily,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: const Color(0XFF00004D)),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  SizedBox(
                    height: 41,
                    child: Center(
                      child: TextFormField(
                        maxLines: 1,
                        obscureText: isObscure,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                            contentPadding:
                                const EdgeInsets.fromLTRB(13, 10, 0, 12),
                            labelText: 'Please Enter Your Password',
                            suffixIcon: InkWell(onTap:(){
                              setState(() {
                              isObscure = !isObscure;
                            });}, child:Image.asset('assets/images/view.png')),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide:
                                    const BorderSide(color: Color(0XFFC6C6C6))),
                            focusedBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Color(0XFFC6C6C6)))),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Password is required';
                          } else if (!RegExp(r'^().{8,}$').hasMatch(password)) {
                            return 'At least 8 char needed';
                          } else {
                            return null;
                          }
                        },
                        onSaved: (String? newValue) {
                          password = newValue ?? '';
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  Text(
                    'Age',
                    style: TextStyle(
                        fontFamily: GoogleFonts.manrope().fontFamily,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: const Color(0XFF00004D)),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  SizedBox(
                    height: 41,
                    child: Center(
                      child: TextFormField(
                        maxLines: 1,
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            contentPadding:
                            const EdgeInsets.fromLTRB(13, 10, 0, 12),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide:
                                const BorderSide(color: Color(0XFFC6C6C6))),
                            focusedBorder: const OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Color(0XFFC6C6C6)))),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Age is required';
                          } else if (int.tryParse(value)! < 12 || int.tryParse(value)! > 100) {
                            return 'Age limit is 12 to 100';
                          } else {
                            return null;
                          }
                        },

                        onSaved: (String? newValue) {
                          age = newValue ?? '';
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Text(
                    'Birth Date',
                    style: TextStyle(
                        fontFamily: GoogleFonts.manrope().fontFamily,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: const Color(0XFF00004D)),
                  ),
                  const SizedBox(
                    height: 7,
                  ),
                  SizedBox(
                    height: 41,
                    child: Center(
                      child: TextFormField(
                        readOnly: true,
                      controller: dateController,
                        onTap: () async {
                          DateTime? pickedDate = await showDatePicker(
                              context: context, initialDate: DateTime.now(),
                              firstDate: DateTime(2000), //DateTime.now() - not to allow to choose before today.
                              lastDate: DateTime(2101)
                          );

                          if(pickedDate != null ){
                            String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);

                            setState(() {
                              dateController.text = formattedDate;
                              birthDate = formattedDate;//set output date to TextField value.
                            });
                          }else{
                          }
                        },
                        maxLines: 1,
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(

                            contentPadding:
                            const EdgeInsets.fromLTRB(13, 10, 0, 12),
                            hintText: 'Please enter your date of birth',
                            suffixIcon:  Container(padding:const EdgeInsets.all(8),child: Image.asset('assets/images/calendar.png',)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide:
                                const BorderSide(color: Color(0XFFC6C6C6))),
                            focusedBorder: const OutlineInputBorder(
                                borderSide:
                                BorderSide(color: Color(0XFFC6C6C6)))),

                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 17,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: const Color(0XFFCDD1E0)),
                                borderRadius: BorderRadius.circular(5)),
                            height: 20,
                            width: 20,
                            child: Checkbox(
                                value: isChecked,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                                checkColor: const Color(0XFF000C14),
                                activeColor: const Color(0XFFFFFFFF),
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value!;
                                  });
                                }),
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Text(
                            'Remember Me',
                            style: TextStyle(
                                fontFamily: GoogleFonts.manrope().fontFamily,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: const Color(0XFF000000)),
                          ),
                        ],
                      ),
                      Text('Forgot Password',
                          style: TextStyle(
                              fontFamily: GoogleFonts.manrope().fontFamily,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: const Color(0XFFFB344F))),
                    ],
                  ),
             const SizedBox(height: 60,),
                  SizedBox(
                      height: 45,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              backgroundColor: const Color(0XFF351A96)),
                          onPressed: () {
                            _loginFormKey.currentState!.save();
                            _loginFormKey.currentState!.validate();
                            if (_loginFormKey.currentState!.validate() == true) {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Home(name: name,userName: userName, email: email, age: age, birthDate: birthDate,)));
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content:
                                          Center(child: Text('Sign Up failed'))));
                            }
                          },
                          child: const Center(child: Text('Sign Up')))),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an account?',
                          style: TextStyle(
                              fontFamily: GoogleFonts.manrope().fontFamily,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: const Color(0XFF999EA1))),
                      const SizedBox(
                        width: 9,
                      ),
                      Text('Sign In',
                          style: TextStyle(
                              fontFamily: GoogleFonts.manrope().fontFamily,
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: const Color(0XFF160062)))
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
