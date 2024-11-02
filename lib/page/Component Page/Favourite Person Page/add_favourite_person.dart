import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kaiecash/Widget/my_button.dart';
import 'package:kaiecash/Widget/my_text_field.dart';
import 'package:kaiecash/page/Models/favourite_person_model.dart';
import 'package:kaiecash/page/controller/favourite_person_controller.dart';
import 'package:kaiecash/utils/route.dart';

class FavouritePerson extends StatefulWidget {
  const FavouritePerson({super.key});

  @override
  State<FavouritePerson> createState() => _FavouritePersonState();
}

class _FavouritePersonState extends State<FavouritePerson> {
  final TextEditingController textNameController = TextEditingController();
  final TextEditingController textBankNumberController =
      TextEditingController();
  final FavouritePersonController favouritePersonController = Get.find();

  @override
  Widget build(BuildContext context) {
    favouritePersonController.loadPerson();

    return Scaffold(
      appBar: AppBar(
        title: Text('Favourite Person List'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 140),
            child: MyTextField(
              textEditingController: textNameController,
              labelText: 'Enter Name',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          MyTextField(
            textEditingController: textBankNumberController,
            labelText: 'Enter Bank number',
            keyboardType: TextInputType.number,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyButton(
                buttonText: "Add Favourite",
                width: 123,
                onPressed: () {
                  if (textNameController.text.isEmpty ||
                      textBankNumberController.text.isEmpty) {
                    Get.snackbar(
                      'Error',
                      'Please fill in all fields',
                      snackPosition: SnackPosition.BOTTOM,
                    );
                    return;
                  }
                  if (int.tryParse(textBankNumberController.text) == null) {
                    Get.snackbar(
                      'Error',
                      'Bank number must be a valid number',
                      snackPosition: SnackPosition.BOTTOM,
                    );
                    return;
                  }

                  bool bankNumberExists = favouritePersonController.persons.any(
                      (person) =>
                          person.bankAccount == textBankNumberController.text);

                  if (bankNumberExists) {
                    Get.snackbar(
                      'Error',
                      'Bank number already exists',
                      snackPosition: SnackPosition.BOTTOM,
                    );
                    return;
                  }

                  String initials = textNameController.text
                      .split(' ')
                      .map((word) => word[0].toUpperCase())
                      .join('');

                  PersonModel person = PersonModel(
                    name: textNameController.text.toString(),
                    bankAccount: textBankNumberController.text.toString(),
                    initial: initials,
                  );

                  favouritePersonController.addPerson(person);

                  textNameController.clear();
                  textBankNumberController.clear();

                  Get.snackbar(
                    'Success',
                    'Person added successfully',
                    snackPosition: SnackPosition.BOTTOM,
                  );
                }, backgroundColor: null,
              ),
              SizedBox(
                width: 10,
              ),
              MyButton(
                buttonText: "",
                width: 72,
                onPressed: () {
                  Get.toNamed(AppRoutes.favouritedPersonListViewPage);
                },
                icon: Icons.star,
                border: CircleBorder(), backgroundColor: null,
              )
            ],
          ),
        ],
      ),
    );
  }
}
