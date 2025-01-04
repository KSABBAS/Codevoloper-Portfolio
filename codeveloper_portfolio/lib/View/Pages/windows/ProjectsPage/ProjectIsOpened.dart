import 'package:codeveloper_portfolio/Constants/UsedColors.dart';
import 'package:codeveloper_portfolio/Data/ProjectsData.dart';
import 'package:codeveloper_portfolio/MyTools/MyFunctionTools.dart';
import 'package:codeveloper_portfolio/MyTools/MyTools.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProjectIsOpened extends StatefulWidget {
  const ProjectIsOpened({super.key, required this.ProjectIndex});
  final int ProjectIndex;

  @override
  State<ProjectIsOpened> createState() => _ProjectIsOpenedState();
}

class _ProjectIsOpenedState extends State<ProjectIsOpened> {
  @override
  Widget build(BuildContext context) {
    final projectData = ProjectClass.getProjectsData()[widget.ProjectIndex];

    return Scaffold(
      body: Stack(
        children: [
          _buildBackground(),
          _buildContent(context, projectData),
        ],
      ),
    );
  }

  Widget _buildBackground() {
    return CMaker(
      height: double.infinity,
      width: double.infinity,
      child: Image.asset("images/background.jpg", fit: BoxFit.cover),
    );
  }

  Widget _buildContent(BuildContext context, List<dynamic> projectData) {
    return CMaker(
      height: PageHeight(context),
      width: PageWidth(context),
      padding: EdgeInsets.symmetric(
        vertical: ResponsiveHeight(context, 40),
        horizontal: ResponsiveWidth(context, 40),
      ),
      child: ListView(
        children: [
          _buildHeader(context, projectData),
          ResponsivePMaker(vertical: 20),
          _buildDescription(context, projectData),
          ResponsivePMaker(vertical: 20),
          _buildMediaSection(context, projectData),
          ResponsivePMaker(vertical: 20),
          _buildLinksSection(context, projectData),
          ResponsivePMaker(vertical: 30),
        ],
      ),
    );
  }

  Widget _buildHeader(BuildContext context, List<dynamic> projectData) {
    return Container(
      width: PageWidth(context),
      height: ResponsiveHeight(context, 120),
      child: Row(
        children: [
          _buildProjectImage(context, projectData[0]),
          ResponsivePMaker(horizontal: 20),
          _buildProjectTitle(context, projectData[1]),
          Spacer(),
          _buildBackButton(),
        ],
      ),
    );
  }

  Widget _buildProjectImage(BuildContext context, String imageUrl) {
    return Container(
      width: ResponsiveWidth(context, 120),
      height: ResponsiveHeight(context, 120),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: Image.network(imageUrl),
      ),
    );
  }

  Widget _buildProjectTitle(BuildContext context, String title) {
    return Text(
      title,
      style: TextStyle(
        color: Colors.white,
        fontSize: ResponsiveFontSizeByHeight(context, 40),
        fontWeight: FontWeight.w200,
      ),
    );
  }

  Widget _buildBackButton() {
    return InkWell(
      onTap: () {
        Get.back();
      },
      child: CMaker(
        color: UsedColors.Gray,
        alignment: Alignment.center,
        circularRadius: 20,
        height: ResponsiveHeight(context, 40),
        width: ResponsiveWidth(context, 100),
        child: Icon(
          Icons.arrow_forward,
          size: ResponsiveFontSizeByHeight(context, 30),
        ),
      ),
    );
  }

  Widget _buildDescription(BuildContext context, List<dynamic> projectData) {
    return CMaker(
      width: double.infinity,
      alignment: Alignment.centerLeft,
      child: CMaker(
        width: ResponsiveWidth(context, 1200),
        alignment: Alignment.topLeft,
        padding: EdgeInsets.all(ResponsiveWidth(context, 20)),
        
          color: UsedColors.Gray.withOpacity(0.1),
          circularRadius:10,
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Project Description",
              style: TextStyle(
                color: Colors.white,
                fontSize: ResponsiveFontSizeByHeight(context, 20),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: ResponsiveHeight(context, 10)),
            TMaker(
              textAlign: TextAlign.start,
              text: projectData[2],
              fontSize: ResponsiveFontSizeByHeight(context, 15),
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMediaSection(BuildContext context, List<dynamic> projectData) {
    return CMaker(
      height: ResponsiveHeight(context, 530),
      width: ResponsiveWidth(context, PageWidth(context)),
      child: CMaker(
        color: UsedColors.Gray,
        alignment: Alignment.center,
        height: ResponsiveHeight(context, 500),
        width: ResponsiveWidth(context, 1536),
        padding: EdgeInsets.symmetric(
          vertical: ResponsiveFontSizeByHeight(context, 15),
        ),
        circularRadius: 15,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            ResponsivePMaker(horizontal: 15),
            _buildVideoPlayer(context, projectData[3]),
            ResponsivePMaker(horizontal: 15),
            _buildImageGallery(context, projectData[4]),
          ],
        ),
      ),
    );
  }

  Widget _buildVideoPlayer(BuildContext context, String videoUrl) {
    return CMaker(
      circularRadius: 15,
      height: ResponsiveHeight(context, 500),
      width: ResponsiveWidth(context, 400),
      color: UsedColors.background,
      alignment: Alignment.center,
      child: MyVideoPlayer(url: videoUrl, allowFullScreen: true),
    );
  }

  Widget _buildImageGallery(BuildContext context, List<String> imageUrls) {
    return CMaker(
      height: ResponsiveHeight(context, 500),
      width: ResponsiveWidth(context, 415.0 * imageUrls.length),
      child: ListView.builder(
        shrinkWrap: false,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          return CMaker(
            margin: EdgeInsets.only(right: ResponsiveWidth(context, 15)),
            circularRadius: 15,
            color: UsedColors.background,
            height: ResponsiveHeight(context, 500),
            width: ResponsiveWidth(context, 400),
            child: Image.network(imageUrls[index]),
          );
        },
      ),
    );
  }

  Widget _buildLinksSection(BuildContext context, List<dynamic> projectData) {
    final links = projectData[5];
    return CMaker(
      width: PageWidth(context),
      height: ResponsiveHeight(context, 145),
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (links["app"] != null) _buildLinkButton(context, "App Link", "images/download.png", links["app"]),
          ResponsivePMaker(horizontal: 20),
          if (links["website"] != null) _buildLinkButton(context, "Website Link", "images/website.png", links["website"]),
          ResponsivePMaker(horizontal: 20),
          if (links["github"] != null) _buildLinkButton(context, "Github Link", "images/github.png", links["github"]),
        ],
      ),
    );
  }

  Widget _buildLinkButton(BuildContext context, String label, String iconPath, String url) {
    return InkWell(
      onTap: () {
        LaunchURL(url: url);
      },
      child: CMaker(
        color: UsedColors.Gray,
        padding: EdgeInsets.symmetric(
          vertical: ResponsiveHeight(context, 20),
          horizontal: ResponsiveWidth(context, 20),
        ),
        circularRadius: 15,
        height: ResponsiveHeight(context, 145),
        child: Column(
          children: [
            Container(
              height: ResponsiveHeight(context, 60),
              width: ResponsiveWidth(context, 60),
              child: Image.asset(iconPath),
            ),
            ResponsivePMaker(vertical: 20),
            TMaker(
              textAlign: TextAlign.start,
              text: label,
              fontSize: ResponsiveFontSizeByHeight(context, 15),
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
