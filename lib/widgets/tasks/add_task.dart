import 'package:bloc_todos_app/utilities/constants.dart';
import 'package:bloc_todos_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class AddTask extends StatefulWidget {
  AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  TextEditingController nameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dueDateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text(
            'Add Task',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              color: primaryColor,
            ),
          ),
          const SizedBox(height: 20),
          CustomTextField(
            controller: nameController,
            hintText: 'Enter task Name',
            labelText: 'Name',
            borderColor: primaryColor,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter task name';
              }
              return null;
            },
          ),
          const SizedBox(height: 20),
          CustomTextField(
            controller: descriptionController,
            hintText: 'Enter task description',
            labelText: 'Description',
            maxLines: 5,
            borderColor: primaryColor,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter task description';
              }
              return null;
            },
          ),
          const SizedBox(height: 20),
          // Date picker and update date after selection
          ElevatedButton(
            onPressed: () async {
              final DateTime? pickedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime.now(),
                lastDate: DateTime(2100),
              );
              if (pickedDate != null) {
                setState(() {
                  dueDateController.text =
                      pickedDate.toString().substring(0, 10);
                });
              }
            },
            child: Text(
              'Select Due Date: ${dueDateController.text}',
              style: TextStyle(color: primaryColor),
            ),
          ),
          const SizedBox(height: 20),
          // select category from dropdown
          DropdownButtonFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              labelText: 'Category',
              hintText: 'Select your category',
              prefixIcon: Icon(Icons.category),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: primaryColor,
                  width: 2.0,
                ),
              ),
            ),
            value: 'Personal',
            items: [
              DropdownMenuItem(value: 'Personal', child: Text('Personal')),
              DropdownMenuItem(value: 'Work', child: Text('Work')),
              DropdownMenuItem(value: 'Meeting', child: Text('Meeting')),
            ],
            onChanged: (value) {
              setState(() {});
            },
            validator: (value) {
              if (value == null) {
                return 'Please select an item';
              }
              return null;
            },
          ),
          const SizedBox(height: 20),
          // cancel and add buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: const Text(
                  'Cancel',
                  style: TextStyle(color: primaryColor),
                ),
              ),
              const SizedBox(width: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Add',
                  style: TextStyle(color: primaryColor),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
