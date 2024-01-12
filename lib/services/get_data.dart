import 'package:job_app_ui/models/job_model.dart';

class GetData {
  final instalogo =
      "https://i.pinimg.com/1200x/6a/12/c9/6a12c9813b2c41582357005e60f16df4.jpg";
  final pickmelogo =
      "https://yt3.googleusercontent.com/ytc/AIf8zZSA3CtChjzvY4VydDu-KCTHkW-AxKsGoKN4AT8cWg=s900-c-k-c0x00ffffff-no-rj";
  final tiktoklogo =
      "https://i.pinimg.com/736x/9a/79/de/9a79decb24f139b7a5476d600fdf4b06.jpg";

  List<JobModel> getJobData() {
    List<JobModel> jobs = [
      JobModel(
          title: "Senior UX Designer",
          salary: "LKR 80000 /month",
          companyName: "Instagram",
          logo: instalogo,
          city: "Colombo",
          time: "7 Days Left"),
      JobModel(
          title: "Senior Mobile Developer",
          salary: "LKR 90000 /month",
          companyName: "Pick Me",
          logo: pickmelogo,
          city: "Galle",
          time: "17 Days Left"),
      JobModel(
          title: "Senior Web Developer",
          salary: "LKR 60000 /month",
          companyName: "Instagram",
          logo: tiktoklogo,
          city: "Kandy",
          time: "10 Days Left"),
      JobModel(
          title: "Senior UI Designer",
          salary: "LKR 100000 /month",
          companyName: "Instagram",
          logo: instalogo,
          city: "Matara",
          time: "30 Days Left")
    ];

    return jobs;
  }
}
