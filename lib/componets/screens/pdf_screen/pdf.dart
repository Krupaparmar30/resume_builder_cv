import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:printing/printing.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:resume_builder_cv/componets/screens/achievement_details/achievement2.dart';
import 'package:resume_builder_cv/componets/screens/add_photos/photo.dart';
import 'package:resume_builder_cv/componets/screens/career/career.dart';
import 'package:resume_builder_cv/componets/screens/education_details/education2.dart';
import 'package:resume_builder_cv/componets/screens/education_details/education2.dart';
import 'package:resume_builder_cv/componets/screens/experience_details/experience2.dart';
import 'package:resume_builder_cv/componets/screens/menu2_page/menu2_page.dart';
import 'package:resume_builder_cv/componets/screens/project_details/project2.dart';
import 'package:resume_builder_cv/componets/screens/skill_details/skill2.dart';
import 'package:resume_builder_cv/utils/COLORS.DART.dart';
import 'package:resume_builder_cv/utils/globle/globle.dart';

import '../education_details/education2.dart';


class pdfPage extends StatefulWidget {
  const pdfPage({super.key});

  @override
  State<pdfPage> createState() => _pdfPageState();
}

class _pdfPageState extends State<pdfPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Preview'),
      ),
      body: PdfPreview(
        build: (format) => generatePdf(),
      ),
    );
  }
}

Future <Uint8List>generatePdf() {
  final pdf = pw.Document();
  final image=pw.MemoryImage(fileImage!.readAsBytesSync());
  var index;
  pdf.addPage(
    pw.Page(
        build: (context) => pw.Row(
            children:[
          pw.Container(
            width: 800,
            height: 900,
            padding: pw.EdgeInsets.all(20),

            color: PdfColors.blue900,
            child: pw.Row(
              children: [

                pw.Container(
                  height: 900,
                  width: 200,
                  color: PdfColors.white,

                  
                  child: pw.Column(
                    children: [

                      pw.Container(
                        height: 200,
                        width: 230,
                        color: PdfColors.pink,

                      child: pw.Image(image,fit: pw.BoxFit.cover)





                      ),
                      pw.Container(
                        height: 10,
                        width:400,
                        color: PdfColors.blue900,

                      ),pw.SizedBox(
                        height: 10
                      ),


                     pw.Container(
                       height: 30,
                       width:400,
                       color: PdfColors.white,
                       child:  pw.Text(
                           ' Name : ${txtPerName.text}',style: pw.TextStyle(fontSize: 18)
                       ),
                     ),

                      pw.SizedBox(
                          height: 10
                      ),
                      pw.Container(
                        height: 30,
                        width: 400,
                        color: PdfColors.white,
                        child: pw.Text(
                            ' Profession : ${txtProfession.text}',style: pw.TextStyle(fontSize: 18)
                        ),
                      ),
                      pw.SizedBox(
                          height: 10
                      ),
                    pw.Container(
                        height: 30,
                        width: 400,
                        color: PdfColors.white,
                      child:  pw.Text(
                          ' Gender: ${gender}',style: pw.TextStyle(fontSize: 18)
                      ),
                    ),
                      pw.SizedBox(
                          height: 10
                      ),
                    pw.Container(
                        height: 30,
                        width: 400,
                        color: PdfColors.white,
                        child:pw.Text(
                          ' D.O.B : ${txtPerDob.text}',style: pw.TextStyle(fontSize: 18)
                      ),
                    ),
                      pw.SizedBox(
                          height: 10
                      ),
                    pw.Container(
                        height: 30,
                        width: 400,
                        color: PdfColors.white,
                      child:pw.Text(
                          ' Married Status: ${married}',style: pw.TextStyle(fontSize: 18)
                      ),
                    ),
                    pw.SizedBox(
                      height: 15
                    ),
                    pw.Container(
                        height: 30,
                        width: 400,
                        color: PdfColors.white,
                      child:pw.Text(
                          ' Add : ${txtPerAdd.text}',style: pw.TextStyle(fontSize: 18)
                      ),
                    ),
                      pw.SizedBox(
                          height: 20
                      ),
                    pw.Container(
                        height: 30,
                        width: 400,
                        color: PdfColors.white,
                     child:  pw.Text(
                          ' Nationality : ${txtPerNation.text}',style: pw.TextStyle(fontSize: 18)
                      ),
                    ),
                      pw.SizedBox(
                          height: 10
                      ),
                    pw.Container(
                        height: 30,
                        width: 400,
                        color: PdfColors.white,
                      child:pw.Text(
                          ' Language : ${txtPerLan.text}',style: pw.TextStyle(fontSize: 18)
                      ),
                    ),
                      pw.SizedBox(
                          height: 10
                      ),
                    pw.Container(
                        height: 30,
                        width: 400,
                        color: PdfColors.white,
                      child:pw.Text(
                          ' Hobby : ${txtPerHobby.text}',style: pw.TextStyle(fontSize: 18)
                      ),
                    ),
                      pw.SizedBox(
                          height: 10
                      ),
                    pw.Container(
                        height: 30,
                        width: 400,
                        color: PdfColors.white,
                      child:pw.Text(
                          ' Contact :${txtPerContact.text}',style: pw.TextStyle(fontSize: 18)
                      ),
                    ),
                      pw.SizedBox(
                          height: 10
                      ),
                    pw.Container(
                        height: 30,
                        width: 400,
                        color: PdfColors.white,
                        child:pw.Text(
                          ' Email :${txtPerEmail.text}',style: pw.TextStyle(fontSize: 18)
                      ),
                    ),


                    ]
                  )

                ),
                pw.Column(
                  children: [

                    pw.SizedBox(
                      width: 10
                    ),
                    pw.Container(
                        height: 20,
                        width:375,
                        color: PdfColors.white,

                        child: pw.Text(
                        ' Education',style:pw.TextStyle(fontSize:16,color: PdfColors.blue900)

                        ),
                    ),
                    pw.SizedBox(
                        height: 10
                    ),
                    pw.Container(
                        height: 10,
                        width:375,


                        child:
                    pw.Text(
                        ' Degree     : Master in Flutter devloper',style: pw.TextStyle(fontSize:12,color: PdfColors.white)


                    ),
                    ),
                    pw.SizedBox(
                        height: 10
                    ),
                    pw.Container(
                        height: 10,
                        width:375,


                        child:

                    pw.Text(
                        ' Uni/School : v.v.s',style: pw.TextStyle(fontSize:12,color: PdfColors.white)

                    ),
                    ),
                    pw.SizedBox(
                        height: 10
                    ),

                    pw.Container(
                        height: 10,
                        width:375,


                        child:
                    pw.Text(
                        ' Pass Out Year : 2015',style: pw.TextStyle(fontSize:12,color: PdfColors.white)

                    ),

                    ),
                    pw.SizedBox(
                        height: 10
                    ),
                    pw.Container(
                        height: 25,
                        width:375,


                        child:
                    pw.Text(
                        ' Result:  78.91%',style: pw.TextStyle(fontSize:12,color: PdfColors.white)

                    ),
                    ),
                    pw.SizedBox(
                        height: 2
                    ),
                    pw.Container(
                        height: 20,
                        width:375,
                    color: PdfColors.white,

                    child:
                    pw.Text('  Object:',style: pw.TextStyle(
                      fontSize: 16,color: PdfColors.blue900
                    ),
                    ),
                    ),
                    pw.SizedBox(
                        height: 2
                    ),

                    pw.Container(
                        height: 60,
                        width:400,

                        child:
                    pw.Text('    you can provide a detailed and informative description of a specific    career. If you have a particular career in mind, please let me know, and I can give you more targeted information.',style: pw.TextStyle(
                      fontSize: 12,color: PdfColors.white
                    )),),


                    pw.Container(
                      height:480,
                      width: 300,
                      decoration: pw.BoxDecoration(

                        color: PdfColors.white,


                          borderRadius: pw.BorderRadius.circular(20),

                      ),
                      child: pw.Column(
                        children: [
                          pw.Container(
                              width: 400,
                              height: 15,

                            decoration:  pw.BoxDecoration(
                                color: PdfColors.white,
                              borderRadius: pw.BorderRadius.circular(20)
                            )



                          ),
                          pw.Container(
                              width: 400,
                              height: 15,
                              color: PdfColors.blue900,

                              child: pw.Text(
                                ' Achivments: ',style: pw.TextStyle(
                                  fontSize: 14,color: PdfColors.white
                              ),

                              )
                          ),



                          pw.SizedBox(
                              height: 15
                          ), pw.Container(
                              width: 400,
                              height: 15,
                              child: pw.Text(
                                ' ${txtAchivName.text}',style: pw.TextStyle(
                                  fontSize: 18
                              ),

                              )
                          ),

                          pw.SizedBox(
                              height: 3
                          ), pw.Container(
                              width: 400,
                              height: 15,
                              child: pw.Text(
                                ' ${txtAchivYear.text}',style: pw.TextStyle(
                                  fontSize: 18
                              ),

                              )
                          ),


                          pw.SizedBox(
                              height: 3
                          ), pw.Container(
                              width: 400,
                              height: 15,
                              child: pw.Text(
                                ' ${txtAchivDetails.text}',style: pw.TextStyle(
                                  fontSize: 18
                              ),

                              )
                          ),




                          pw.SizedBox(
                              height: 30
                          ),

                          pw.Container(
                            width: 400,
                            height: 15,
                            color: PdfColors.blue900,
                            child: pw.Text(
                              ' Skills:',style: pw.TextStyle(
                              color: PdfColors.white
                            )
                            )
                          ),
                          pw.SizedBox(
                              height: 8
                          ),
                          pw.Container(
                              width: 400,
                              height: 15,

                              child: pw.Text(
                                  ' ${txtController.text} ',
                                  style: pw.TextStyle(
                                      fontSize: 14
                                  )

                              )
                          ),
                          pw.Container(
                              width: 400,
                              height: 15,

                              child: pw.Text(
                                  ' c++ ',style: pw.TextStyle(
                              fontSize: 14
                              )

                              )
                          ),
                          pw.Container(
                              width: 400,
                              height: 15,

                              child: pw.Text(
                                  ' python ',
                                  style: pw.TextStyle(
                                     fontSize: 14
                                  )

                              )
                          ),
                          pw.Container(
                              width: 400,
                              height: 15,

                              child: pw.Text(
                                  ' java',
                                  style: pw.TextStyle(
                                    fontSize: 14
                                  )

                              )
                          ),
                          pw.SizedBox(
                              height: 30
                          ),
                          pw.Container(
                              width: 400,
                              height: 15,
                              color: PdfColors.blue900,
                              child: pw.Text(
                                  ' Project:',style: pw.TextStyle(
                                  color: PdfColors.white
                              )
                              )
                          ),
                          pw.SizedBox(
                              height: 15
                          ),
                          pw.Container(
                              width: 400,
                              height: 15,

                              child: pw.Text(
                                  ' Project Title:                       ${txtTitle.text}'

                              )
                          ),
                          pw.Container(
                              width: 400,
                              height: 15,

                              child: pw.Text(
                                  ' Project Duration:                 ${txtDuration.text}'

                              )
                          ),
                          pw.Container(
                              width: 400,
                              height: 15,

                              child: pw.Text(
                                  ' Project Role:                        ${txtRole.text}'

                              )
                          ),
                          pw.Container(
                              width: 400,
                              height: 15,

                              child: pw.Text(
                                  ' Project Size:                        ${txtTeam.text}'

                              )
                          ),
                          pw.Container(
                              width: 400,
                              height: 15,

                              child: pw.Text(
                                  ' Project Experitise:               ${txtExperitise.text}'

                              )
                          ),
                          pw.SizedBox(
                              height: 20
                          ),
                          pw.Container(
                              width: 400,
                              height: 15,
                              color: PdfColors.blue900,
                              child: pw.Text(
                                  ' Experience:',style: pw.TextStyle(
                                  color: PdfColors.white
                              )
                              )
                          ),
                          pw.SizedBox(
                              height: 20
                          ),
                          pw.Container(
                              width: 400,
                              height: 15,

                              child: pw.Text(
                                  ' Company:      ${txtCompany.text}'

                              )
                        ),
                          pw.Container(
                              width: 400,
                              height: 15,

                              child: pw.Text(
                                  ' Position:        ${txtPosition.text}'

                              )
                          ),
                          pw.Container(
                              width: 400,
                              height: 15,

                              child: pw.Text(
                                  ' Period:           ${txtPeriod.text}'

                              )
                          ),
                          pw.Container(
                              width: 400,
                              height: 15,

                              child: pw.Text(
                                  ' City:               ${txtCity.text}'

                              )
                          ),
                          pw.SizedBox(
                              height: 20
                          ),
                          pw.Container(
                              width: 400,
                              height: 15,

                              child: pw.Text(
                                  '--- Thank you that all about me ---',style: pw.TextStyle(
                                color: PdfColors.blue900,fontSize: 18
                              )

                              )
                          ),






                        ]
                      )
                      )


                  ]
                )

              ]
            )
          ),

        ]
       
        













        )),
  );
  return pdf.save();
}
int index=0;