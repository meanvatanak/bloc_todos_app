import 'package:camasean/pages/authentication/login_page.dart';
import 'package:camasean/pages/basic_info/profile.dart';
import 'package:camasean/pages/events/event_detail.dart';
import 'package:camasean/pages/events/events.dart';
import 'package:camasean/pages/exit-exams/exit-exams.dart';
import 'package:camasean/pages/homepage/homepage.dart';
import 'package:camasean/pages/job-opportunities/job_detail.dart';
import 'package:camasean/pages/job-opportunities/jobs.dart';
import 'package:camasean/pages/payment-record/other-payment-record/other_payment_list.dart';
import 'package:camasean/pages/payment-record/other-payment-record/other_payment_receipt.dart';
import 'package:camasean/pages/payment-record/payment_list/payment_list.dart';
import 'package:camasean/pages/payment-record/payment_list/receipt.dart';
import 'package:camasean/pages/payment-record/payment_record.dart';
import 'package:camasean/pages/scholarships/scholarships.dart';
import 'package:camasean/pages/scholarships/scholarships_detail.dart';
import 'package:camasean/pages/setting/change_password.dart';
import 'package:camasean/pages/splash_page/splash_screen.dart';
import 'package:camasean/pages/study-record/attendance-record/attendance_level_lists.dart';
import 'package:camasean/pages/study-record/attendance-record/attendance_subject_list/attendance_date.dart';
import 'package:camasean/pages/study-record/attendance-record/attendance_subject_list/attendance_detail.dart';
import 'package:camasean/pages/study-record/attendance-record/attendance_subject_list/attendance_subjects_list.dart';
import 'package:camasean/pages/study-record/score-record/score-subject_list/score_subjects_list.dart';
import 'package:camasean/pages/study-record/score-record/score_level_lists.dart';
import 'package:camasean/pages/study-record/study_records.dart';
import 'package:camasean/pages/study-record/total-score-record/total_score_detail.dart';
import 'package:camasean/pages/study-record/total-score-record/total_score_lists.dart';
import 'package:flutter/material.dart';

import '../pages/authentication/register.dart';
import '../pages/exit-exams/exit-exam-detail.dart';
import '../pages/not_found_page/not_found_page.dart';
import '../pages/study-record/score-record/score-subject_list/score_detail.dart';

Route<dynamic> appRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(
        builder: (context) => const SplashPage(),
      );
    case '/splash':
      return MaterialPageRoute(
        builder: (context) => const SplashPage(),
      );
    case '/login':
      return MaterialPageRoute(
        builder: (context) => const LoginPage(),
      );
    case '/register':
      return MaterialPageRoute(
        builder: (context) => const Register(),
      );
    case '/homepage':
      return MaterialPageRoute(
        builder: (context) => const HomePage(),
      );
    case '/profile':
      return MaterialPageRoute(
        builder: (context) => const Profile(),
      );
    case '/scholarships':
      return MaterialPageRoute(
        builder: (context) => const ScholarshipLists(),
      );
    case '/scholarship-detail':
      return MaterialPageRoute(
        builder: (context) => const ScholarshipDetail(),
      );
    case '/events':
      return MaterialPageRoute(
        builder: (context) => const EventLists(),
      );
    case '/event-detail':
      return MaterialPageRoute(
        builder: (context) => const EventDetail(),
      );
    case '/jobs':
      return MaterialPageRoute(
        builder: (context) => const JobLists(),
      );
    case '/job-detail':
      return MaterialPageRoute(
        builder: (context) => const JobDetail(),
      );
    case '/study-records':
      return MaterialPageRoute(
        builder: (context) => const StudyRecords(),
      );
    case '/study-record/attendance-list':
      return MaterialPageRoute(
        builder: (context) => const AttendanceLevelList(),
      );
    case '/study-record/attendance-list/subjects-list':
      return MaterialPageRoute(
        builder: (context) => const AttendanceSubjectList(),
      );
    case '/study-record/attendance-list/subjects-list/attendance-detail':
      return MaterialPageRoute(
        builder: (context) => const AttendanceDetail(),
      );
    case '/study-record/attendance-list/subjects-list/attendance-detail/attendance-date':
      return MaterialPageRoute(
        builder: (context) => const AttendanceDate(),
      );
    case '/study-record/score-lists':
      return MaterialPageRoute(
        builder: (context) => const ScoreLevelList(),
      );
    case '/study-record/score-lists/subjects-list':
      return MaterialPageRoute(
        builder: (context) => const ScoreSubjectLists(),
      );
    case '/study-record/score-list/subjects-list/score-detail':
      return MaterialPageRoute(
        builder: (context) => const ScoreDetail(),
      );
    case '/study-record/total-records':
      return MaterialPageRoute(
        builder: (context) => const TotalLevelList(),
      );
    case '/study-record/total-list/total-score-detail':
      return MaterialPageRoute(
        builder: (context) => const TotalScoreDetail(),
      );
    case '/payment-records':
      return MaterialPageRoute(
        builder: (context) => const PaymentRecords(),
      );
    case '/payment-record/payment-list':
      return MaterialPageRoute(
        builder: (context) => const PaymentList(),
      );
    case '/payment-record/payment-list/payment-detail':
      return MaterialPageRoute(
        builder: (context) => const Receipt(),
      );
    case '/payment-record/other-payment-list':
      return MaterialPageRoute(
        builder: (context) => const OtherPaymentList(),
      );
    case '/payment-record/other-payment-list/other-payment-detail':
      return MaterialPageRoute(
        builder: (context) => const OtherPaymentReceipt(),
      );
    case '/exit-exams':
      return MaterialPageRoute(
        builder: (context) => const ExitExamLists(),
      );
    case '/exit-exams/exit-exam-detail':
      return MaterialPageRoute(
        builder: (context) => const ExitExamDetail(),
      );
    case '/change-password':
      return MaterialPageRoute(
        builder: (context) => const ChangePassword(),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => const NotFoundPage(),
      );
  }
}
