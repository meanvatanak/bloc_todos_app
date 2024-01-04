import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../widgets/custom_text_field.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  List<String> communes = [
    'Boeng Keng Kang1, Phnom Penh',
    'Boeng Keng Kang2, Phnom Penh',
    'Boeng Keng Kang3, Phnom Penh',
    'Olympic, Phnom Penh',
    'Toul Svayprey1, Phnom Penh',
    'Toul Svayprey2, Phnom Penh',
    'Tomnub Teuk, Phnom Penh',
    'Toul Tompung1, Phnom Penh',
    'Toul Tompung2, Phnom Penh',
    'Beung Trabaek, Phnom Penh',
    'Psar Deumtkov, Phnom Penh',
    'Psar Depot1, Phnom Penh',
    'Psar Depot2, Phnom Penh',
    'Psar Depot3, Phnom Penh',
    'Teuk Laork1, Phnom Penh',
    'Teuk Laork2, Phnom Penh',
    'Teuk Laork3, Phnom Penh',
    'Beung Kok1, Phnom Penh',
    'Beung Kok2, Phnom Penh',
    'Psar Deumkor, Phnom Penh',
    'Beung Salang, Phnom Penh',
    'Svay Pak, Phnom Penh',
    'Chrang Chamreh 1, Phnom Penh',
    'Chrang Chamreh 2, Phnom Penh',
    'Kilometr Lek 6, Phnom Penh',
    'Toul Sangke, Phnom Penh',
    'Russey Keo, Phnom Penh',
    'Krang Thnong, Phnom Penh',
    'Khmuonh, Phnom Penh',
    'Phnom Penh Thmei, Phnom Penh',
    'Tuek Thla, Phnom Penh',
    'Obek Kaom, Phnom Penh',
    'Psar Thmei1, Phnom Penh',
    'Psar Thmei2, Phnom Penh',
    'Psar Thmei3, Phnom Penh',
    'Boeung Reang, Phnom Penh',
    'Psar Kandal1, Phnom Penh',
    'Psar Kandal2, Phnom Penh',
    'Chaktomukh, Phnom Penh',
    'Chey Chumneah, Phnom Penh',
    'Psar Chas, Phnom Penh',
    'Srah Chork, Phnom Penh',
    'Vat Phnum, Phnom Penh',
    'Dangkor, Phnom Penh',
    'Prey Sa, Phnom Penh',
    'Cheung Aek, Phnom Penh',
    'Spean Thma, Phnom Penh',
    'Prey Vaeng, Phnom Penh',
    'Pong Tuek, Phnom Penh',
    'Prateah Lang, Phnom Penh',
    'Sak Sampov, Phnom Penh',
    'Krang Pongro, Phnom Penh',
    'Kong Noy, Phnom Penh',
    'Tien, Phnom Penh',
    'Praek Kampues, Phnom Penh',
    'Ovlaok, Phnom Penh',
    'Kamboul, Phnom Penh',
    'Kantaok, Phnom Penh',
    'Boeng Thum, Phnom Penh',
    'Phleung Chheh Roteh, Phnom Penh',
    'Chaom Chau, Phnom Penh',
    'Trapeang Krasang, Phnom Penh',
    'Kakab, Phnom Penh',
    'Samraong Kraom, Phnom Penh',
    'Snaor, Phnom Penh',
    'Bak Kheng, Phnom Penh',
    'Praek Leab, Phnom Penh',
    'Praek Ta Sek, Phnom Penh',
    'Chrouy Changvar, Phnom Penh',
    'Kaoh Dach, Phnom Penh',
    'Ponsang, Phnom Penh',
    'Ponhea Pon, Phnom Penh',
    'Samraong, Phnom Penh',
    'Praek Phnov, Phnom Penh',
    'Chbar Ampov 1, Phnom Penh',
    'Chbar Ampov 2, Phnom Penh',
    'Nirouth, Phnom Penh',
    'Praek Pra, Phnom Penh',
    'Praek Thmei, Phnom Penh',
    'Kbal Kaoh, Phnom Penh',
    'Praek Aeng, Phnom Penh',
    'Veal Sbov, Phnom Penh',
    'Stung Meanchey, Phnom Penh',
    'Boeng Tompun, Phnom Penh',
    'Chak Angrae Leu, Phnom Penh',
    'Chak Angrae Kroam, Phnom Penh',
    'O Reussei 1, Phnom Penh',
    'O Reussei 2, Phnom Penh',
    'O Reussei 3, Phnom Penh',
    'Monorom, Phnom Penh',
    'Mittapheap, Phnom Penh',
    'Vealvong, Phnom Penh',
    'Beung Prolit, Phnom Penh',
    'Banteay Meanchey',
    'Battambang',
    'Kampong Cham',
    'Kampong Chhnang',
    'Kampong Speu',
    'Kampong Thom',
    'Kampot',
    'Kandal',
    'Koh Kong',
    'Kratié',
    'Mondulkiri',
    'Preah Vihear',
    'Prey Veng',
    'Pursat',
    'Ratanakiri',
    'Siem Reap',
    'Preah Sihanouk',
    'Stung Treng',
    'Svay Rieng',
    'Takeo',
    'Oddar Meanchey',
    'Pailin',
    'Tboung Khmum',
  ];

  List<String> province = [
    'Phnom Penh',
    'Banteay Meanchey',
    'Battambang',
    'Kampong Cham',
    'Kampong Chhnang',
    'Kampong Speu',
    'Kampot',
    'Kandal',
    'Kep',
    'Koh Kong',
    'Kratie',
    'Mondulkiri',
    'Oddor Meanchey',
    'Pailin',
    'Prey Veng',
    'Pursat',
    'Rattanakiri',
    'Siem Reap',
    'Sihanouk ville',
    'Stung Treng',
    'Svay Rieng',
    'Takeo',
    'Kampong Thom',
    'Preah Vihear',
    'Tbong Khmum',
    'Aruba',
    'Afghanistan',
    'Angola',
    'Anguilla',
    'Åland',
    'Albania',
    'Andorra',
    'United Arab Emirates',
    'Argentina',
    'Armenia',
    'American Samoa',
    'Antarctica',
    'French Southern Territories',
    'Antigua and Barbuda',
    'Australia',
    'Austria',
    'Azerbaijan',
    'Burundi',
    'Belgium',
    'Benin',
    'Bonaire',
    'Burkina Faso',
    'Bangladesh',
    'Bulgaria',
    'Bahrain',
    'Bahamas',
    'Bosnia and Herzegovina',
    'Saint Barthélemy',
    'Belarus',
    'Belize',
    'Bermuda',
    'Bolivia',
    'Brazil',
    'Barbados',
    'Brunei',
    'Bhutan',
    'Bouvet Island',
    'Botswana',
    'Central African Republic',
    'Canada',
    'Cocos [Keeling] Islands',
    'Switzerland',
    'Chile',
    'China',
    'Ivory Coast',
    'Cameroon',
    'Democratic Republic of the Congo',
    'Republic of the Congo',
    'Cook Islands',
    'Colombia',
    'Comoros',
    'Cape Verde',
    'Costa Rica',
    'Cuba',
    'Curacao',
    'Christmas Island',
    'Cayman Islands',
    'Cyprus',
    'Czech Republic',
    'Germany',
    'Djibouti',
    'Dominica',
    'Denmark',
    'Dominican Republic',
    'Algeria',
    'Ecuador',
    'Egypt',
    'Eritrea',
    'Western Sahara',
    'Spain',
    'Estonia',
    'Ethiopia',
    'Finland',
    'Fiji',
    'Falkland Islands',
    'France',
    'Faroe Islands',
    'Micronesia',
    'Gabon',
    'United Kingdom',
    'Georgia',
    'Guernsey',
    'Ghana',
    'Gibraltar',
    'Guinea',
    'Guadeloupe',
    'Gambia',
    'Guinea-Bissau',
    'Equatorial Guinea',
    'Greece',
    'Grenada',
    'Greenland',
    'Guatemala',
    'French Guiana',
    'Guam',
    'Guyana',
    'Hong Kong',
    'Heard Island and McDonald Islands',
    'Honduras',
    'Croatia',
    'Haiti',
    'Hungary',
    'Indonesia',
    'Isle of Man',
    'India',
    'British Indian Ocean Territory',
    'Ireland',
    'Iran',
    'Iraq',
    'Iceland',
    'Israel',
    'Italy',
    'Jamaica',
    'Jersey',
    'Jordan',
    'Japan',
    'Kazakhstan',
    'Kenya',
    'Kyrgyzstan',
    'Cambodia',
    'Kiribati',
    'Saint Kitts and Nevis',
    'South Korea',
    'Kuwait',
    'Laos',
    'Lebanon',
    'Liberia',
    'Libya',
    'Saint Lucia',
    'Liechtenstein',
    'Sri Lanka',
    'Lesotho',
    'Lithuania',
    'Luxembourg',
    'Latvia',
    'Macao',
    'Saint Martin',
    'Morocco',
    'Monaco',
    'Moldova',
    'Madagascar',
    'Maldives',
    'Mexico',
    'Marshall Islands',
    'Macedonia',
    'Mali',
    'Malta',
    'Myanmar [Burma]',
    'Montenegro',
    'Mongolia',
    'Northern Mariana Islands',
    'Mozambique',
    'Mauritania',
    'Montserrat',
    'Martinique',
    'Mauritius',
    'Malawi',
    'Malaysia',
    'Mayotte',
    'Namibia',
    'New Caledonia',
    'Niger',
    'Norfolk Island',
    'Nigeria',
    'Nicaragua',
    'Niue',
    'Netherlands',
    'Norway',
    'Nepal',
    'Nauru',
    'New Zealand',
    'Oman',
    'Pakistan',
    'Panama',
    'Pitcairn Islands',
    'Peru',
    'Philippines',
    'Palau',
    'Papua New Guinea',
    'Poland',
    'Puerto Rico',
    'North Korea',
    'Portugal',
    'Paraguay',
    'Palestine',
    'French Polynesia',
    'Qatar',
    'Réunion',
    'Romania',
    'Russia',
    'Rwanda',
    'Saudi Arabia',
    'Sudan',
    'Senegal',
    'Singapore',
    'South Georgia and the South Sandwich Islands',
    'Saint Helena',
    'Svalbard and Jan Mayen',
    'Solomon Islands',
    'Sierra Leone',
    'El Salvador',
    'San Marino',
    'Somalia',
    'Saint Pierre and Miquelon',
    'Serbia',
    'South Sudan',
    'São Tomé and Príncipe',
    'Suriname',
    'Slovakia',
    'Slovenia',
    'Sweden',
    'Swaziland',
    'Sint Maarten',
    'Seychelles',
    'Syria',
    'Turks and Caicos Islands',
    'Chad',
    'Togo',
    'Thailand',
    'Tajikistan',
    'Tokelau',
    'Turkmenistan',
    'East Timor',
    'Tonga',
    'Trinidad and Tobago',
    'Tunisia',
    'Turkey',
    'Tuvalu',
    'Taiwan',
    'Tanzania',
    'Uganda',
    'Ukraine',
    'U.S. Minor Outlying Islands',
    'Uruguay',
    'United States',
    'Uzbekistan',
    'Vatican City',
    'Saint Vincent and the Grenadines',
    'Venezuela',
    'British Virgin Islands',
    'U.S. Virgin Islands',
    'Vietnam',
    'Vanuatu',
    'Wallis and Futuna',
    'Samoa',
    'Kosovo',
    'Yemen',
    'South Africa',
    'Zambia',
    'Zimbabwe',
  ];

  late final TextEditingController _khmerNameController;
  late final TextEditingController _latinNameController;
  late final TextEditingController _chineseNameController;
  late final TextEditingController _genderController;
  late final TextEditingController _nationalityController;
  late final TextEditingController _dateOfBirthController;
  late final TextEditingController _phoneController;
  late final TextEditingController _placeOfBirthController;
  late final TextEditingController _currentAddressController;
  late final TextEditingController _occupationController;
  late final TextEditingController _emailController;
  late final TextEditingController _facebookNameController;
  late final TextEditingController _motherNameController;
  late final TextEditingController _motherOccupationController;
  late final TextEditingController _fatherNameController;
  late final TextEditingController _fatherOccupationController;
  late final TextEditingController _guardianNameController;
  late final TextEditingController _guardianPhoneController;
  late final TextEditingController _howDoYouKnowController;
  late final TextEditingController _studyShiftController;
  late final TextEditingController _educationController;
  late final TextEditingController _gradeController;
  late final TextEditingController _programController;

  @override
  void initState() {
    _khmerNameController = TextEditingController();
    _latinNameController = TextEditingController();
    _chineseNameController = TextEditingController();
    _genderController = TextEditingController();
    _nationalityController = TextEditingController();
    _dateOfBirthController = TextEditingController();
    _phoneController = TextEditingController();
    _placeOfBirthController = TextEditingController();
    _currentAddressController = TextEditingController();
    _occupationController = TextEditingController();
    _emailController = TextEditingController();
    _facebookNameController = TextEditingController();
    _motherNameController = TextEditingController();
    _motherOccupationController = TextEditingController();
    _fatherNameController = TextEditingController();
    _fatherOccupationController = TextEditingController();
    _guardianNameController = TextEditingController();
    _guardianPhoneController = TextEditingController();
    _howDoYouKnowController = TextEditingController();
    _studyShiftController = TextEditingController();
    _educationController = TextEditingController();
    _gradeController = TextEditingController();
    _programController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _khmerNameController.dispose();
    _latinNameController.dispose();
    _chineseNameController.dispose();
    _genderController.dispose();
    _nationalityController.dispose();
    _dateOfBirthController.dispose();
    _phoneController.dispose();
    _placeOfBirthController.dispose();
    _currentAddressController.dispose();
    _occupationController.dispose();
    _emailController.dispose();
    _facebookNameController.dispose();
    _motherNameController.dispose();
    _motherOccupationController.dispose();
    _fatherNameController.dispose();
    _fatherOccupationController.dispose();
    _guardianNameController.dispose();
    _guardianPhoneController.dispose();
    _howDoYouKnowController.dispose();
    _studyShiftController.dispose();
    _educationController.dispose();
    _gradeController.dispose();
    _programController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: whiteColor,
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, '/login', (route) => false);
          },
        ),
        backgroundColor: primaryColor,
        title: Text(
          'Register Form',
          style: TextStyle(color: whiteColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Form(
          // key: _formKey,
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextField(
                  // controller: _fullNameController,
                  hintText: 'Name in Khmer',
                  labelText: 'Name in Khmer',
                  // prefixIcon: Icon(Icons.person),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name in khmer';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                CustomTextField(
                  // controller: _fullNameController,
                  hintText: 'Name in Latin',
                  labelText: 'Name in Latin',
                  // prefixIcon: Icon(Icons.person),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name in latin';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                CustomTextField(
                  // controller: _fullNameController,
                  hintText: 'Name in Chinese',
                  labelText: 'Name in Chinese',
                  // prefixIcon: Icon(Icons.person),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name in chinese';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                DropdownButtonFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: 'Gender',
                    hintText: 'Select your Gender',
                    prefixIcon: Icon(Icons.person),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                        width: 2.0,
                      ),
                    ),
                  ),
                  value: _genderController.text.isEmpty
                      ? null
                      : _genderController.text,
                  items: [
                    DropdownMenuItem(value: 'Female', child: Text('Female')),
                    DropdownMenuItem(value: 'Male', child: Text('Male')),
                    DropdownMenuItem(value: 'Monk', child: Text('Monk')),
                  ],
                  onChanged: (value) {
                    setState(() {
                      _genderController.text = value.toString();
                    });
                  },
                  validator: (value) {
                    if (value == null) {
                      return 'Please select an item';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                CustomTextField(
                  // controller: _fullNameController,
                  hintText: 'Nationality',
                  labelText: 'Nationality',
                  // prefixIcon: Icon(Icons.person),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your nationality';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () async {
                      final DateTime? pickedDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1900),
                        lastDate: DateTime(2100),
                      );
                      if (pickedDate != null) {
                        setState(() {
                          _dateOfBirthController.text =
                              pickedDate.toString().substring(0, 10);
                        });
                      }
                    },
                    child: Text(
                      'Select Date of Birth: ${_dateOfBirthController.text}',
                      style: TextStyle(color: primaryColor),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                CustomTextField(
                  // controller: _fullNameController,
                  hintText: 'Phone',
                  labelText: 'Phone',
                  // prefixIcon: Icon(Icons.person),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your phone number';
                    }
                    if (!RegExp(r"^[0-9]*$").hasMatch(value)) {
                      return 'Phone must be number';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                DropdownButtonFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: 'Place of Birth',
                    hintText: 'Select your Place of Birth',
                    prefixIcon: Icon(Icons.place),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                        width: 2.0,
                      ),
                    ),
                  ),
                  value: _placeOfBirthController.text.isEmpty
                      ? null
                      : _placeOfBirthController.text,
                  items: communes.map((String commune) {
                    return DropdownMenuItem<String>(
                      value: commune,
                      child: Text(commune),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _placeOfBirthController.text = value.toString();
                    });
                  },
                  validator: (value) {
                    if (value == null) {
                      return 'Please select an item';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                DropdownButtonFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: 'Current Address',
                    hintText: 'Select your Current Address',
                    prefixIcon: Icon(Icons.place),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                        width: 2.0,
                      ),
                    ),
                  ),
                  value: _currentAddressController.text.isEmpty
                      ? null
                      : _currentAddressController.text,
                  items: communes.map((String commune) {
                    return DropdownMenuItem<String>(
                      value: commune,
                      child: Text(commune),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() {
                      _currentAddressController.text = value.toString();
                    });
                  },
                  validator: (value) {
                    if (value == null) {
                      return 'Please select an item';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                CustomTextField(
                  // controller: _fullNameController,
                  hintText: 'Occupation',
                  labelText: 'Occupation',
                  // prefixIcon: Icon(Icons.person),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your occupation';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                CustomTextField(
                  // controller: _fullNameController,
                  hintText: 'Email',
                  labelText: 'Email',
                  // prefixIcon: Icon(Icons.person),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    if (!RegExp(r"^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$")
                        .hasMatch(value)) {
                      return 'Please enter valid email';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                CustomTextField(
                  // controller: _fullNameController,
                  hintText: 'Facebook Name',
                  labelText: 'Facebook Name',
                  // prefixIcon: Icon(Icons.person),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter facebook name';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                CustomTextField(
                  // controller: _fullNameController,
                  hintText: "Mother\'s Name",
                  labelText: "Mother\'s Name",
                ),
                SizedBox(height: 10),
                CustomTextField(
                  // controller: _fullNameController,
                  hintText: "Mother\'s Occupation",
                  labelText: "Mother\'s Occupation",
                ),
                SizedBox(height: 10),
                CustomTextField(
                  // controller: _fullNameController,
                  hintText: "Father\'s Name",
                  labelText: "Father\'s Name",
                ),
                SizedBox(height: 10),
                CustomTextField(
                  // controller: _fullNameController,
                  hintText: "Father\'s Occupation",
                  labelText: "Father\'s Occupation",
                ),
                SizedBox(height: 10),
                CustomTextField(
                  // controller: _fullNameController,
                  hintText: "Guardian\'s Name",
                  labelText: "Guardian\'s Name",
                  // prefixIcon: Icon(Icons.person),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter guardian name';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                CustomTextField(
                  // controller: _fullNameController,
                  hintText: 'Guardian\'s Phone',
                  labelText: 'Guardian\'s Phone',
                  // prefixIcon: Icon(Icons.person),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your guardian phone number';
                    }
                    if (!RegExp(r"^[0-9]*$").hasMatch(value)) {
                      return 'Phone must be number';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                DropdownButtonFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: 'How do you know CAM-ASEAN',
                    hintText: 'Select your How do you know CAM-ASEAN',
                    prefixIcon: Icon(Icons.person),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                        width: 2.0,
                      ),
                    ),
                  ),
                  value: _howDoYouKnowController.text.isEmpty
                      ? null
                      : _howDoYouKnowController.text,
                  items: [
                    DropdownMenuItem(value: 'Friend', child: Text('Friend')),
                    DropdownMenuItem(value: 'Media', child: Text('Media')),
                    DropdownMenuItem(value: 'Walk-In', child: Text('Walk-In')),
                  ],
                  onChanged: (value) {
                    setState(() {
                      _howDoYouKnowController.text = value.toString();
                    });
                  },
                  validator: (value) {
                    if (value == null) {
                      return 'Please select an item';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                DropdownButtonFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: 'Study Shift',
                    hintText: 'Select your Study Shift',
                    prefixIcon: Icon(Icons.person),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                        width: 2.0,
                      ),
                    ),
                  ),
                  value: _studyShiftController.text.isEmpty
                      ? null
                      : _studyShiftController.text,
                  items: [
                    DropdownMenuItem(value: 'Morning', child: Text('Morning')),
                    DropdownMenuItem(
                        value: 'Afternoon', child: Text('Afternoon')),
                    DropdownMenuItem(value: 'Evening', child: Text('Evening')),
                    DropdownMenuItem(value: 'Weekend', child: Text('Weekend')),
                  ],
                  onChanged: (value) {
                    setState(() {
                      _studyShiftController.text = value.toString();
                    });
                  },
                  validator: (value) {
                    if (value == null) {
                      return 'Please select an item';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                DropdownButtonFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: 'Education',
                    hintText: 'Select your Education',
                    prefixIcon: Icon(Icons.person),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                        width: 2.0,
                      ),
                    ),
                  ),
                  value: _educationController.text.isEmpty
                      ? null
                      : _educationController.text,
                  items: [
                    DropdownMenuItem(
                        value: 'Primary School', child: Text('Primary School')),
                    DropdownMenuItem(
                        value: 'Secondary School',
                        child: Text('Secondary School')),
                    DropdownMenuItem(
                        value: 'High School', child: Text('High School')),
                    DropdownMenuItem(
                        value: 'University', child: Text('University')),
                  ],
                  onChanged: (value) {
                    setState(() {
                      _educationController.text = value.toString();
                    });
                  },
                  validator: (value) {
                    if (value == null) {
                      return 'Please select an item';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                CustomTextField(
                  // controller: _fullNameController,
                  hintText: 'Grade',
                  labelText: 'Grade',
                ),
                SizedBox(height: 10),
                DropdownButtonFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    labelText: 'Program you want study',
                    hintText: 'Select your Program you want study',
                    prefixIcon: Icon(Icons.person),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.green,
                        width: 2.0,
                      ),
                    ),
                  ),
                  value: _programController.text.isEmpty
                      ? null
                      : _programController.text,
                  items: [
                    DropdownMenuItem(
                        value: 'Chinese Program',
                        child: Text('Chinese Program')),
                    DropdownMenuItem(
                        value: 'English Program',
                        child: Text('English Program')),
                    DropdownMenuItem(
                        value: 'Young Learner Program',
                        child: Text('Young Learner Program')),
                  ],
                  onChanged: (value) {
                    setState(() {
                      _programController.text = value.toString();
                    });
                  },
                  validator: (value) {
                    if (value == null) {
                      return 'Please select an item';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    icon: Icon(
                      Icons.login,
                      color: whiteColor,
                    ),
                    label: Text(
                      'Register',
                      style: TextStyle(
                        color: whiteColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
