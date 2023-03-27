class ApiEndPoint {
  static String baseUrl = 'https://flutter.mydynamicerp.com/';

  //static String baseUrl = 'https://oxford.mydynamicerp.com';
  //static String baseUrl = 'https://uat.mydynamicerp.com';
  // static String baseUrl = 'https://kma1.mydynamicerp.com';

  static const version = 'v1';
  static const token = "token";
  static const userdetails = "general/getuserdetail";

  static const getAppFeatures = "general/GetAppFeatures";

  //update password
  static const updatePassword = "general/updatepwd";
  //get school information
  static const schoolInformation = "general/getaboutcompany";
  static const noticeList = "general/getnoticelist";
  static const notificationLogs = "general/getNotificationLog";
  static const notificationCount = "General/NotificationCount";
  static const notificationList = 'General/GetNoticeList';
  static const readAllNotification = "General/readAllNotificationLog";

  static const galleryList = "general/getgallerylist";
  static const videoList = "general/getvideoslist";
  static const sliderList = "general/getsliderlist";
  static const serviceAndFacilities = "general/getservicesandfacilitieslist";
  static const academicProgramList = "general/getacademicprogramlist";
  static const executiveMemberList = "general/getexecutivememberlist";
  static const getIntroduction = "general/getintroduction";
  static const sendFeedback = "general/feedbacksuggestion";
  static const getWhoWeAre = "general/getwhoweare";
  static const getMonthNames = "general/getcompanyperiodmonth";

  /// endpoint for student
  static const studentGetExamConfiguration = "student/getexamconfiguration";
  static const getStudentProfile = "student/getstudentprofile";
  static const joinOnlineClass = "student/joinonlineclass";
  static const getStudentLeaveRequestList = "student/getleavereq";

  //hw
  static const submitHomework = "student/submithomework";
  static const submitAssignment = "student/submitassignment";
  //online exam
  static const onlineExamQuestion = "student/getonlineexamquestion";
  static const submitAnswer = "student/submitoeanswer";
  static const endOnlineExam = "student/endonlineexam";

  //student attendance
  static const studentGetAttendance = "student/getattendance";
  //student siblingdetails
  static const studentGetSiblingDetails = "student/getsiblingdetails";
  //admit card
  static const printAdmitCard = "student/printadmitcardsheet";
  static const studentGetTodayQuotes = "student/gettodayquotes";
  static const studentGetLms = "student/getlms";

  /// endpoint for teacher
  static const getStudentByQrCode = "teacher/getstudentbyqrcode";
  static const getClassofClassheadTeacher = 'Teacher/GetClassForClassTeacher';
  static const getEmployeeByQrCode = "teacher/getemployeebyqrcode";
  static const getEmployeeProfile = "teacher/getemployeeprofile";
  static const getClassSection = "teacher/getclasssectionlist";
  static const getStudentList = "teacher/getclasswisestudentlist";
  static const sendNoticeToStudent = "teacher/sendnoticetostudent";
  static const addRemarksToStudent = "teacher/AddRemarksToStudent";
  static const getRemarksType = "teacher/getremarkstypelist";
  static const getExamSchedule = "teacher/getexamschedule";
  static const getRemarksFor = "StaticValues/getremarksfor";
  static const teacherGetTodayQuotes = "teacher/gettodayquotes";
  static const getExamwiseHeightWeight = "teacher/getexamwiseheightweight";
  static const getExamResultDispatch = "teacher/getexamresultdispatch";
  static const addExamwiseHeightWeight = "teacher/addexamwiseheightweight";
  static const addExamResultDispatch = "teacher/addexamresultdispatch";
  static const getObtainMark = "teacher/getobtainmark";
  static const getObtainMarkGroup = "teacher/getobtainmarkgroup";
  static const getEmpLeaveReqList = "teacher/getempleavereq";
  static const leaveApprove = "teacher/leaveapprove";

  //attendance
  static const getClasswiseAttendanceSummary =
      "Teacher/GetClassWiseAttendanceSummary";
  static const getSubjectwiseAttendance = "teacher/getsubjectwiseattendance";
  static const getStudentwiseAttendance = "teacher/getstudentattendancemonthly";
  static const getSubjectList = "teacher/getsubjectlist";
  static const saveClasswiseAttendance = "teacher/saveclasswiseattendance";
  static const saveSubjectwiseAttendance = "teacher/savesubjectwiseattendance";
  static const absenteeClasswise = "teacher/getdatewiseattendancesummary";
  static const absenteeSubjectwise = "teacher/getdatewisesubattendancesummary";
  static const classwiseAttendanceSummary =
      "teacher/getclasswiseattendancesummary";
  static const classwiseAttendanceMonthly =
      "teacher/getclasswiseattendancemonthly";
  static const subjectwiseAttendance = "teacher/getsubjectwiseattendance";
  static const qrAttendance = "general/qrattendance";
  static const getAttendanceLog = "teacher/getattendancelog";
  //online platform
  static const addOnlinePlatform = "teacher/addonlineplatform";
  static const getOnlinePlatform = "teacher/getonlineplatform";
  static const startClassTeacher = "teacher/startonlineclass";
  static const getRunningClass = "teacher/getrunningclasses";
  static const endOnlineClass = "teacher/endonlineclass";
  static const getPastOnlineClass = "teacher/getpassonlineclasses";
  static const getOnlineClassAttendance = "teacher/getonlineclassattbyid";
  static const getClassGroupList = "teacher/getclassgrouplist";
  //time table
  static const getClassShift = "teacher/getclassshiftlit";
  static const getClassSchedule = "teacher/getclassschedule";
  //notification
  static const getNotificationType = "staticues/getnotificationtypes";
  static const getNotificationLog = "general/getnotificationlog";
  static const readNotification = "general/readnotificationlog";
  static const countNotification = "general/notificationcount";
  //homework
  static const getHomeworkType = "teacher/gethomeworktypelist";
  static const addHomeWork = "teacher/addhomework";
  static const getHomework = "teacher/gethomeworklist";
  static const getHomeworkDetails = "teacher/gethomeworkbyid";
  static const homeworkCheck = "teacher/checkhomework";
  static const homeworkCheckClasswise = "teacher/checkclasswisehomework";
  static const addAssignment = "teacher/addassignment";
  static const getAssignmentType = "teacher/getassignmenttypelist";
  static const getAssignmentList = "teacher/getassignmentlist";
  static const getAssignmentDetails = "teacher/getassignmentbyid";
  static const assignmentCheck = "teacher/checkassignment";
  static const getLessonPlanByClassSubject =
      "teacher/getlessonplanbyclasssubject";
  static const addLessonPlan = "teacher/addlessionplan";
  static const updateLessonPlanDate = "teacher/updatelessionplandate";
  static const getLessonTopicContent = "teacher/getlessontopiccontent";
  static const addLessonTopicContent = "teacher/addlessontopiccontent";

  //onlineexam
  static const getOnlineExam = "teacher/getonlineexamlist";
  static const getOnlineExamDetails = "teacher/getonlineexamdetbyid";
  static const startOnlineExam = "student/startonlineexam";
  static const getExamType = "teacher/getexamtypelist";
  static const getReExamType = "teacher/getreexamtypelist";
  //marks entry
  static const addMarkEntry = "teacher/addmarkentry";
  static const addreMarkEntry = "teacher/addreMarkEntry";
  static const getStudentForSubjectWiseMarkEntry =
      "teacher/getstudentforsubjectme";
  static const getStudentForSubjectWisereMarkEntry =
      "teacher/getstudentforsubjectreme";
  static const getStudentForCasMe = "teacher/getstudentforcasme";
  static const getCasTypeList = "teacher/getcastypelist";
  static const addcasMarkEntry = "teacher/addcasMarkEntry";
  //student marks sheet
  static const getObtainMarks = "student/getobtainmark";
  static const printMarkSheet = "student/printmarksheet";
  static const printGroupMarksSheet = "student/printgroupmarksheet";
  static const getAggregateObtainMarks = "student/getobtainmarkgroup";
  static const getExamGroupType = "teacher/getexamtypegrouplist";
  //exam attendance
  static const getStudentForExamAttendance =
      "teacher/getstudentforexamattendance";
  static const addExamAttendance = "teacher/addexamwiseattendance";
  //del assignment
  static const deleteAssignment = "teacher/delassignmentbyid";
  static const deleteHomework = "teacher/delhomeworkbyid";
  static const editHomework = "teacher/updatehomeworkdeadline";
  static const editAssignment = "teacher/updateassignmentdeadline";

  //event
  static const event = "general/geteventholiday";
  //fee details
  static const feeDetails = "student/getfeedetails";
  static const getFeeSummary = "student/getfeesummary";
  static const printFeeReceipt = "student/printfeereceipt";
  //payment wallet
  static const khaltiWallet = "wallet/khaltipayment";
  static const khaltiPaymentConfirm = "wallet/khaltipaymentconfirm";
  //banner
  static const getBannerList = "general/getbannerlist";
  //wallet
  static const getPaymentGateways = "wallet/getpaymentgateways";
  static const confirmPayment = "wallet/onlinepayment";
  static const getClassForClassTeacher = "teacher/getclassforclassteacher";
  //edit profile student
  static const stdUpdatePersonalInfo = "student/updatepersonalinfo";
  static const stdUpdateParentsDetails = "student/updateparentdetails";
  static const stdUpdatePermanentAddress = "student/updatepermanentaddress";
  static const stdUpdateTemporaryAddress = "student/updatetemporaryaddress";
  static const stdUpdateContactInfo = "student/updatecontactinfo";
  static const stdUpdatePhoto = "student/updatephoto";
  static const stdUpdateGuardianDetails = "student/updateguardiandetails";
  static const stdUpdatePreviousSchool = "student/updatepreviousschool";
  static const casteList = "academic/getcastelist";
  static const updateSignature = "student/updatesignature";

  /// admin
  static const studentAnalysis = "academic/getstudentanalysis";
  static const adminGetStudentList = "admin/getstudentlist";
  static const adminVehicleList = "admin/getvehiclelist";
  static const adminGetTeacherList = "admin/getemployeelist";
  static const adminDashboard = "admin/getdashboard";
  static const adminGetStudentDailyBioAttendance =
      "admin/getstudentdailybioattendance";
  static const adminGetStudentMonthlyBioAttendance =
      "admin/getstudentmonthlybioattendance";
  static const adminGetEmpDailyBioAttendance = "admin/getempdailybioattendance";
  static const adminGetEmpMonthlyBioAttendance =
      "admin/getempmonthlybioattendance";
  static const duesList = "admin/getdueslist";
  static const hostelTransportAnalysis = "admin/gettransporthostelanalysis";
  static const hostelStudentList = "admin/gethostelstudentlist";
  static const vehicleRoute = "teacher/getroutelist";
  static const adminGetBirthDayList = "admin/getbirthdaylist";
  static const getVisitorLog = "admin/getvisitorlog";
  static const getLastLoginLog = "admin/getlastloginlog";
  static const getIncomeExpenditure = "account/getincomeexpenditure";
  static const getProductGroupSummaryAsList =
      "inventory/getproductgroupsummaryaslist";
  static const getProductGroupList = "inventory/getproductgrouplist";
  static const getAutoCompleteLedgerList = "account/autocompleteledgerlist";
  static const getVoucherTypes = "staticues/getvouchertypes";
  static const getLedgerVoucher = "account/getledgervoucher";
  static const getDayBook = "account/getdaybook";
  static const getNewVatRegister = "account/getnewvatregister";
  static const getProfitLossAccount = "account/getplast";
  static const getLedgerGroupSummary = "account/getledgergroupsummary";
  static const getCashBankBook = "account/getcashbankbook";
  static const getBsast = "account/getbsast";

  //teacher update profile
  static const updateTeacherPersonalInfo = "teacher/updatepersonalinfo";
  static const updateTeacherPermanentAddress = "teacher/updatepermanentaddress";
  static const updateTeacherTemporaryAddress = "teacher/updatetemporaryaddress";
  static const updateTeacherCitizenship = "teacher/updatecitizenship";
  static const updateTeacherCit = "teacher/updatecitdetails";
  static const teacherUpdatePhoto = "teacher/updatephoto";

  static const isIdForMarksEntry = "teacher/isidformarkentry";
  static const isIdForReMarksEntry = "teacher/isidforreMarkEntry";
  static const reportExamResultSummary = "admin/getexamresultsummary";
  static const reportExamTeacherSubjectwise = "admin/getteachersubjectanalysis";

  static const classwiseTopReport = "admin/getclasswisetop";
  static const subjectwiseTopReport = "admin/getsubjectwisetop";
  static const examwiseEutation = "admin/getexamwiseeuation";
  static const examGradewiseEuation = "admin/getexamgradewiseeuation";
  static const classwiseStudentExamEuation = "admin/getclasswiseeuation";
  static const examwiseTopReport = "admin/getexamwisetop";
  static const subjectwiseEuation = "admin/getsubjectwiseeuation";
  static const getExamConfiguration = "general/getexamconfiguration";
  static const getAcademicYearList = "general/getacademicyearlist";

  static const getFeeDailyCollection = "admin/getdailycollection";
  static const getStudentVoucher = "admin/getstudentvoucher";
  static const getClasswiseSummary = "admin/getclasswisefeesummary";
  static const scholarshipStudent = "admin/getdiscountstudentlist";
  static const cancelReceipt = "admin/getcancelfeereceipt";
  static const generalStudentRemarks = "student/getstudentremarks";
  static const adminStudentRemarks = "teacher/getstudentremarks";
  static const addStudentRemarks = "teacher/addStudentremarks";
  static const adminAddEmployeeRemarks = "teacher/addemployeeremarks";
  static const adminGetEmployeeRemarks = "teacher/getemployeeremarks";
  static const teacherGetMyRemarks = "teacher/getmyremarks";
  static const adminGetHeadingWiseFeeCollection =
      "admin/getfeeheadingwisedueslist";
  static const getLeaveType = "teacher/getleavetypes";
  static const addLeaveRequest = "teacher/addleaverequest";

  // receiveTimeout
  static const int receiveTimeout = 30;
  // connectTimeout
  static const int connectionTimeout = 60;
  // download timeout
  static const int downloadTimeout = 30;

  //one signal
  static const onesignalThrowSMSNotification = 'SMSThrowNotification';
}
