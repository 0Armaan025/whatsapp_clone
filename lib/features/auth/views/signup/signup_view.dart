import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:phonecodes/phonecodes.dart';
import 'package:whatsapp_clone/utils/showSnackBar.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  String countryName = "Choose country";
  String countryCode = "0";
  final TextEditingController _countryCodeController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();

  String phoneNumber = "";

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    _phoneNumberController.dispose();
    _countryCodeController.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _countryCodeController.text = "+\t" + countryCode;
  }

  void validatePhoneNumber(BuildContext context) {
    if (_countryCodeController.text == "+\t0" ||
        _phoneNumberController.text.length > 10 ||
        _phoneNumberController.text.length < 10 ||
        _phoneNumberController.text.isEmpty) {
      showSnackBar(context, "Invalid phone number or code!");
    }

    phoneNumber = _countryCodeController.text.toString() +
        _phoneNumberController.text.toString();

    print("phone number is: $phoneNumber");
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 10),
              Center(
                child: Text(
                  "Verify your phone number",
                  style: TextStyle(
                    color: HexColor("#0f8b7d"),
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
                  width: size.width * 1,
                  child: Text(
                    "WhatsApp will send an SMS message to verify your phone number. Enter your country code and phone number:",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 88.0),
                child: Center(
                  child: InkWell(
                    onTap: () {
                      showCountryPicker(
                          context: context,
                          onSelect: (e) {
                            countryName = e.name;
                            countryCode = Countries.findByName(countryName)
                                .dialCode
                                .toString();
                            print(
                              'country code is $countryCode',
                            );

                            _countryCodeController.text =
                                countryCode.toString();
                            setState(() {});
                          });
                    },
                    child: DropdownButtonFormField(
                      hint: Text('$countryName'),
                      items: [],
                      onTap: () {
                        showCountryPicker(
                            context: context,
                            onSelect: (e) {
                              countryName = e.name;
                              setState(() {});
                            });
                      },
                      onChanged: (e) {},
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 2,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      flex: 1,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 88.0)
                              .copyWith(right: 20),
                          child: TextFormField(
                            style: TextStyle(color: Colors.black),
                            decoration: const InputDecoration(
                              border: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.brown),
                              ),
                              disabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.brown),
                              ),
                            ),
                            enabled: false,
                            controller: _countryCodeController,
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 2.0)
                              .copyWith(right: 40),
                          child: TextFormField(
                            style: TextStyle(color: Colors.black),
                            keyboardType: TextInputType.phone,
                            decoration: InputDecoration(
                              hintText: 'phone number',
                              hintStyle: TextStyle(color: HexColor("#898989")),
                              border: const UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.brown),
                              ),
                              disabledBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.brown),
                              ),
                              enabledBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.brown),
                              ),
                            ),
                            enabled: true,
                            controller: _phoneNumberController,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * 0.4,
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    validatePhoneNumber(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: HexColor("#24d366"),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    alignment: Alignment.center,
                    height: size.height * 0.05,
                    width: size.width * 0.3,
                    child: Text(
                      'NEXT',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Center(
                child: Text(
                  "Carrier SMS charges may apply",
                  style: TextStyle(color: HexColor("#909090")),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
