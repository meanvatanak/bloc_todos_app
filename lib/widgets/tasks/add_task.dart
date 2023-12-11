import 'package:bloc_todos_app/utilities/constants.dart';
import 'package:bloc_todos_app/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class AddTask extends StatefulWidget {
  AddTask({super.key});

  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  TextEditingController titleController = TextEditingController();
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
            controller: titleController,
            hintText: 'Enter task title',
            labelText: 'Title',
            borderColor: primaryColor,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter task title';
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
