import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:codeveloper_portfolio/Data/ProjectsData.dart';
import 'package:codeveloper_portfolio/MyTools/MyFunctionTools.dart';
import 'package:codeveloper_portfolio/MyTools/MyTools.dart';

class MobileProjectIsOpened extends StatefulWidget {
  const MobileProjectIsOpened({super.key, required this.ProjectIndex});
  final int ProjectIndex;

  @override
  State<MobileProjectIsOpened> createState() => _MobileProjectIsOpenedState();
}

class _MobileProjectIsOpenedState extends State<MobileProjectIsOpened>
    with SingleTickerProviderStateMixin {
  final Color primaryColor = const Color.fromARGB(255, 29, 29, 32);
  final Color accentColor = const Color.fromARGB(255, 210, 191, 35);
  late AnimationController _controller;

  // State variable to control the full-screen image overlay.
  String? fullScreenImageUrl;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  // Check if the video link is valid.
  bool _isValidVideoLink(String? url) {
    return url != null && url.trim().isNotEmpty && url.startsWith("http");
  }

  @override
  Widget build(BuildContext context) {
    final projectData = ProjectClass.getProjectsData()[widget.ProjectIndex];
    return Scaffold(
      backgroundColor: primaryColor,
      body: Stack(
        children: [
          // Animated creative background with dynamic, glowing curvy lines.
          AnimatedCreativeBackground(
            primaryColor: primaryColor,
            accentColor: accentColor,
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                _buildHeader(context, projectData),
                SizedBox(height: ResponsiveHeight(context, 20)),
                _buildGlassDescription(context, projectData),
                SizedBox(height: ResponsiveHeight(context, 20)),
                if (_isValidVideoLink(projectData[3]))
                  _buildGlassVideoSection(context, projectData),
                if (_isValidVideoLink(projectData[3]))
                  SizedBox(height: ResponsiveHeight(context, 20)),
                // Images Block.
                _buildGlassImagesSection(context, projectData),
                SizedBox(height: ResponsiveHeight(context, 20)),
                _buildGlassLinksSection(context, projectData),
                SizedBox(height: ResponsiveHeight(context, 30)),
              ],
            ),
          ),
          // Back button positioned at the top-left.
          Positioned(
            top: MediaQuery.of(context).padding.top + 10,
            left: 10,
            child: _buildBackButton(),
          ),
          // Full-screen image overlay.
          if (fullScreenImageUrl != null)
            Positioned.fill(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    fullScreenImageUrl = null;
                  });
                },
                child: Container(
                  color: Colors.black.withOpacity(0.9),
                  child: Center(
                    child: InteractiveViewer(
                      child: Image.network(
                        fullScreenImageUrl!,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }

  // Header with the project image and title, clipped to a wave shape.
  Widget _buildHeader(BuildContext context, List<dynamic> projectData) {
    return ClipPath(
      clipper: HeaderClipper(),
      child: Container(
        height: ResponsiveHeight(context, 300),
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(projectData[0]),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          color: primaryColor.withOpacity(0.6),
          child: Center(
            child: Text(
              projectData[1],
              textAlign: TextAlign.center,
              style: TextStyle(
                color: accentColor,
                fontSize: ResponsiveFontSizeByHeight(context, 36),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Back button styled as a golden circular icon.
  Widget _buildBackButton() {
    return InkWell(
      onTap: () {
        Get.back();
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: accentColor,
          shape: BoxShape.circle,
        ),
        child: Icon(
          Icons.arrow_back,
          color: primaryColor,
          size: ResponsiveFontSizeByHeight(context, 24),
        ),
      ),
    );
  }

  // Glassmorphism container for the description section.
  Widget _buildGlassDescription(
      BuildContext context, List<dynamic> projectData) {
    return GlassContainer(
      primaryColor: primaryColor,
      accentColor: accentColor,
      child: Padding(
        padding: EdgeInsets.all(ResponsiveWidth(context, 20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Project Description",
              style: TextStyle(
                color: accentColor,
                fontSize: ResponsiveFontSizeByHeight(context, 22),
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: ResponsiveHeight(context, 10)),
            Text(
              projectData[2],
              style: TextStyle(
                color: Colors.white,
                fontSize: ResponsiveFontSizeByHeight(context, 16),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Glassmorphism container for the media section with separate video and images blocks.

  // Glassmorphism container for the video block.
  Widget _buildGlassVideoSection(
      BuildContext context, List<dynamic> projectData) {
    return GlassContainer(
      primaryColor: primaryColor,
      accentColor: accentColor,
      child: Padding(
        padding: EdgeInsets.all(ResponsiveWidth(context, 20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Video",
              style: TextStyle(
                color: accentColor,
                fontSize: ResponsiveFontSizeByHeight(context, 18),
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: ResponsiveHeight(context, 10)),
            _buildVideoPlayer(context, projectData[3]),
            SizedBox(height: ResponsiveHeight(context, 20)),
          ],
        ),
      ),
    );
  }

  // Glassmorphism container for the images block.
  Widget _buildGlassImagesSection(
      BuildContext context, List<dynamic> projectData) {
    return GlassContainer(
      primaryColor: primaryColor,
      accentColor: accentColor,
      child: Padding(
        padding: EdgeInsets.all(ResponsiveWidth(context, 20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Images",
              style: TextStyle(
                color: accentColor,
                fontSize: ResponsiveFontSizeByHeight(context, 18),
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: ResponsiveHeight(context, 10)),
            // Fixed height of 300 for images block.
            SizedBox(
              height: 300,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: List<String>.from(projectData[4]).length,
                separatorBuilder: (context, index) =>
                    SizedBox(width: ResponsiveWidth(context, 8)),
                itemBuilder: (context, index) {
                  final imageUrl = List<String>.from(projectData[4])[index];
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        if (fullScreenImageUrl == imageUrl) {
                          fullScreenImageUrl = null;
                        } else {
                          fullScreenImageUrl = imageUrl;
                        }
                      });
                    },
                    child: Container(
                      margin:
                          EdgeInsets.only(right: ResponsiveWidth(context, 8)),
                      constraints: BoxConstraints(
                        maxWidth: ResponsiveWidth(context, 300),
                      ),
                      child: Image.network(
                        imageUrl,
                        height: 300,
                        fit: BoxFit.contain,
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Glassmorphism container for the links section.
  Widget _buildGlassLinksSection(
      BuildContext context, List<dynamic> projectData) {
    final links = projectData[5];
    return GlassContainer(
      primaryColor: primaryColor,
      accentColor: accentColor,
      child: Padding(
        padding: EdgeInsets.all(ResponsiveWidth(context, 20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            if (links["app"] != null && links["app"].trim().isNotEmpty)
              _buildLinkButton(
                  context, "App Link", "images/download.png", links["app"]),
            if (links["website"] != null && links["website"].trim().isNotEmpty)
              _buildLinkButton(context, "Website Link", "images/website.png",
                  links["website"]),
            if (links["github"] != null && links["github"].trim().isNotEmpty)
              _buildLinkButton(
                  context, "Github Link", "images/github.png", links["github"]),
          ],
        ),
      ),
    );
  }

  // Video player container with a glass-like border.
  Widget _buildVideoPlayer(BuildContext context, String videoUrl) {
    return Container(
      height: ResponsiveHeight(context, 250),
      width: ResponsiveWidth(context, 350),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.3),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: accentColor.withOpacity(0.5), width: 1),
        boxShadow: [
          BoxShadow(
            color: accentColor.withOpacity(0.4),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: MyVideoPlayer(url: videoUrl, allowFullScreen: true),
    );
  }

  // Individual link button with an icon and label.
  Widget _buildLinkButton(
      BuildContext context, String label, String iconPath, String url) {
    return InkWell(
      onTap: () {
        LaunchURL(url: url);
      },
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(ResponsiveWidth(context, 10)),
            decoration: BoxDecoration(
              color: accentColor,
              shape: BoxShape.circle,
            ),
            child: Image.asset(
              iconPath,
              height: ResponsiveHeight(context, 40),
              width: ResponsiveWidth(context, 40),
              color: primaryColor,
            ),
          ),
          SizedBox(height: ResponsiveHeight(context, 10)),
          Text(
            label,
            style: TextStyle(
              color: Colors.white,
              fontSize: ResponsiveFontSizeByHeight(context, 16),
            ),
          ),
        ],
      ),
    );
  }
}

// GlassContainer widget for glassmorphism effect.
class GlassContainer extends StatelessWidget {
  final Widget child;
  final Color primaryColor;
  final Color accentColor;

  const GlassContainer({
    Key? key,
    required this.child,
    required this.primaryColor,
    required this.accentColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
            color: primaryColor.withOpacity(0.08),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: accentColor.withOpacity(0.3), width: 1),
          ),
          child: child,
        ),
      ),
    );
  }
}

// Custom clipper for the header to create a wave effect at the bottom.
class HeaderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height - 50);
    final firstControlPoint = Offset(size.width / 4, size.height);
    final firstEndPoint = Offset(size.width / 2, size.height - 30);
    path.quadraticBezierTo(
      firstControlPoint.dx,
      firstControlPoint.dy,
      firstEndPoint.dx,
      firstEndPoint.dy,
    );
    final secondControlPoint = Offset(3 * size.width / 4, size.height - 80);
    final secondEndPoint = Offset(size.width, size.height - 40);
    path.quadraticBezierTo(
      secondControlPoint.dx,
      secondControlPoint.dy,
      secondEndPoint.dx,
      secondEndPoint.dy,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

// Animated creative background widget that uses an AnimationController to animate the glowing lines.
class AnimatedCreativeBackground extends StatefulWidget {
  final Color primaryColor;
  final Color accentColor;

  const AnimatedCreativeBackground({
    Key? key,
    required this.primaryColor,
    required this.accentColor,
  }) : super(key: key);

  @override
  _AnimatedCreativeBackgroundState createState() =>
      _AnimatedCreativeBackgroundState();
}

class _AnimatedCreativeBackgroundState extends State<AnimatedCreativeBackground>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 8),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return CustomPaint(
          size: Size.infinite,
          painter: AnimatedGlowingBackgroundPainter(
            accentColor: widget.accentColor,
            animationValue: _controller.value,
          ),
        );
      },
    );
  }
}

// CustomPainter that draws multiple, thick, glowing curvy lines with animation.
class AnimatedGlowingBackgroundPainter extends CustomPainter {
  final Color accentColor;
  final double animationValue;

  AnimatedGlowingBackgroundPainter(
      {required this.accentColor, required this.animationValue});

  @override
  void paint(Canvas canvas, Size size) {
    final double pi2 = 2 * pi;
    // Increase movement amplitude.
    double offset1 = sin(animationValue * pi2) * 40;
    double offset2 = cos(animationValue * pi2) * 50;

    // First glowing line.
    final paint1 = Paint()
      ..color = accentColor.withOpacity(0.35)
      ..strokeWidth = 8
      ..style = PaintingStyle.stroke
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, 12);
    final path1 = Path();
    path1.moveTo(0, size.height * 0.2 + offset1);
    path1.quadraticBezierTo(
      size.width * 0.3,
      size.height * 0.15 + offset2,
      size.width * 0.6,
      size.height * 0.25 + offset1,
    );
    path1.quadraticBezierTo(
      size.width * 0.8,
      size.height * 0.35 + offset2,
      size.width,
      size.height * 0.3 + offset1,
    );
    canvas.drawPath(path1, paint1);

    // Second glowing line.
    final paint2 = Paint()
      ..color = accentColor.withOpacity(0.3)
      ..strokeWidth = 10
      ..style = PaintingStyle.stroke
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, 14);
    final path2 = Path();
    path2.moveTo(0, size.height * 0.5 + offset2);
    path2.cubicTo(
      size.width * 0.25,
      size.height * 0.55 + offset1,
      size.width * 0.75,
      size.height * 0.45 + offset2,
      size.width,
      size.height * 0.5 + offset1,
    );
    canvas.drawPath(path2, paint2);

    // Third glowing diagonal line.
    final paint3 = Paint()
      ..color = accentColor.withOpacity(0.25)
      ..strokeWidth = 6
      ..style = PaintingStyle.stroke
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, 8);
    final path3 = Path();
    path3.moveTo(size.width * 0.1, size.height - offset1);
    path3.lineTo(size.width * 0.9, 0 + offset2);
    canvas.drawPath(path3, paint3);

    // Fourth glowing curvy line near the bottom.
    final paint4 = Paint()
      ..color = accentColor.withOpacity(0.35)
      ..strokeWidth = 9
      ..style = PaintingStyle.stroke
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, 12);
    final path4 = Path();
    path4.moveTo(0, size.height * 0.8 + offset2);
    path4.quadraticBezierTo(
      size.width * 0.5,
      size.height * 0.9 + offset1,
      size.width,
      size.height * 0.75 + offset2,
    );
    canvas.drawPath(path4, paint4);
  }

  @override
  bool shouldRepaint(covariant AnimatedGlowingBackgroundPainter oldDelegate) {
    return oldDelegate.animationValue != animationValue;
  }
}
