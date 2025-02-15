import 'package:csc_picker_plus/csc_picker_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:parking/core/constants/colorapp.dart';
import 'package:parking/core/constants/textstyle.dart';

Widget lctionandntfctionwdgt(context, Countryref countryref) {
  return ListTile(
    contentPadding: const EdgeInsets.all(0),
    isThreeLine: false,
    trailing: CircleAvatar(
      radius: 20,
      backgroundColor: Colors.blue[50],
      child: Center(
        child: Icon(
          Icons.notifications_outlined,
          color: Colorapp.primarycolor,
          size: 25,
          weight: 4,
        ),
      ),
    ),
    minTileHeight: 0,
    title: Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Text(
        "Location",
        style: TextstyleConst.txtstyl26.copyWith(fontWeight: FontWeight.w600),
      ),
    ),
    subtitle: CSCp(countryref),
  );
}

Widget CSCp(Countryref countryref) {
  String stateValue = "";
  String cityValue = "";
  String address = "";

  return StatefulBuilder(builder: (context, setState) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 150.w,
          child: CSCPickerPlus(
            /// Enable disable state dropdown [OPTIONAL PARAMETER]
            showStates: false,

            /// Enable disable city drop down [OPTIONAL PARAMETER]
            showCities: false,

            /// Enable (get flag with country name) / Disable (Disable flag) / ShowInDropdownOnly (display flag in dropdown only) [OPTIONAL PARAMETER]
            flagState: CountryFlag.ENABLE,

            /// Control the language of the country and state list [OPTIONAL PARAMETER]
            countryStateLanguage: CountryStateLanguage.englishOrNative,

            /// Control the language of the country and state list [OPTIONAL PARAMETER]
            cityLanguage: CityLanguage.native,

            /// Dropdown box decoration to style your dropdown selector [OPTIONAL PARAMETER] (USE with disabledDropdownDecoration)
            dropdownDecoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: Colors.white,
              border: null,
            ),

            /// Disabled Dropdown box decoration to style your dropdown selector [OPTIONAL PARAMETER]  (USE with disabled dropdownDecoration)
            disabledDropdownDecoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              color: Colors.grey.shade200,
              border: Border.all(color: Colors.red.shade300, width: 2),
            ),

            /// placeholders for dropdown search field [OPTIONAL PARAMETERS]
            // countrySearchPlaceholder: "Country",
            // stateSearchPlaceholder: "State",
            // citySearchPlaceholder: "City",

            /// labels for dropdown [OPTIONAL PARAMETERS]
            countryDropdownLabel: "Country",
            stateDropdownLabel: "State",
            cityDropdownLabel: "City",

            /// Default Country [OPTIONAL PARAMETER]
            // defaultCountry: CscCountry.Yemen,

            /// Country Filter [OPTIONAL PARAMETER]
            // countryFilter: const [
            //   CscCountry.Yemen,
            //   CscCountry.Saudi_Arabia,
            //   CscCountry.United_States,
            // ],

            /// Disable country dropdown (Note: use it with default country)
            // disableCountry: true,

            /// selected item style [OPTIONAL PARAMETER]
            selectedItemStyle: const TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),

            /// DropdownDialog Heading style [OPTIONAL PARAMETER]
            dropdownHeadingStyle: const TextStyle(
              color: Colors.black,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),

            /// DropdownDialog Item style [OPTIONAL PARAMETER]
            dropdownItemStyle: const TextStyle(
              color: Colors.black,
              fontSize: 14,
            ),

            /// Dialog box radius [OPTIONAL PARAMETER]
            dropdownDialogRadius: 10.0,

            /// Search bar radius [OPTIONAL PARAMETER]
            searchBarRadius: 10.0,

            /// triggers once country selected in dropdown
            onCountryChanged: (value) {
              setState(() {
                /// store value in country variable
              });
            },

            /// triggers once state selected in dropdown
            onStateChanged: (value) {
              if (value != null) {
                setState(() {
                  ///store value in state variable
                  countryref.country = value;
                });
              }
            },

            /// triggers once city selected in dropdown
            onCityChanged: (value) {
              if (value != null) {
                setState(() {
                  ///store value in city variable

                  cityValue = value;
                });
              }
            },
          ),
        ),
      ],
    );
  });
}

class Countryref {
  String country;
  Countryref(this.country);
}
