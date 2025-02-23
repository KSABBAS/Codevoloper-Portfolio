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

  @override
  Widget build(BuildContext context) {
    final projectData = ProjectClass.getProjectsData()[widget.ProjectIndex];
    return Scaffold(
      backgroundColor: primaryColor,
      body: Stack(
        children: [
          // Animated background with glowing, moving lines.
          AnimatedMobileBackground(
            accentColor: accentColor,
            animation: _controller,
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header Widget
                Stack(
                  children: [
                    // Base fill to avoid white gaps.
                    // Header image clipped with a wavy bottom edge.
                    ClipPath(
                      clipper: MobileHeaderClipper(),
                      child: Container(
                        height: ResponsiveHeight(context, 220),
                        width: double.infinity,
                        child: Image.network(
                          projectData[0],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // Lighter gradient overlay to preserve brightness.
                    ClipPath(
                      clipper: MobileHeaderClipper(),
                      child: Container(
                        height: ResponsiveHeight(context, 220),
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              primaryColor.withOpacity(0.25),
                              primaryColor.withOpacity(0.1),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                          ),
                        ),
                      ),
                    ),
                    // Back arrow positioned at top left.
                    Positioned(
                      top: ResponsiveHeight(context, 20),
                      left: ResponsiveWidth(context, 10),
                      child: Container(
                        decoration: BoxDecoration(
                          color: primaryColor.withOpacity(0.6),
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(Icons.arrow_back, color: accentColor),
                          onPressed: () => Get.back(),
                        ),
                      ),
                    ),
                  ],
                ),
                // Content Section with reduced horizontal margins.
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: ResponsiveWidth(context, 10),
                    vertical: ResponsiveHeight(context, 10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Project Title and Divider
                      Text(
                        projectData[1],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: ResponsiveWidth(context, 28),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: ResponsiveHeight(context, 8)),
                      Divider(color: accentColor.withOpacity(0.5), thickness: 1),
                      SizedBox(height: ResponsiveHeight(context, 8)),
                      // Description Section in a glass container.
                      GlassContainer(
                        primaryColor: primaryColor,
                        accentColor: accentColor,
                        child: Padding(
                          padding: EdgeInsets.all(ResponsiveWidth(context, 10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Project Overview',
                                style: TextStyle(
                                  color: accentColor,
                                  fontSize: ResponsiveWidth(context, 18),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: ResponsiveHeight(context, 6)),
                              Text(
                                projectData[2],
                                style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: ResponsiveWidth(context, 14),
                                  height: 1.5,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: ResponsiveHeight(context, 8)),
                      // Media Section in a glass container.
                      GlassContainer(
                        primaryColor: primaryColor,
                        accentColor: accentColor,
                        child: Padding(
                          padding: EdgeInsets.all(ResponsiveWidth(context, 10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Media Gallery',
                                style: TextStyle(
                                  color: accentColor,
                                  fontSize: ResponsiveWidth(context, 18),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: ResponsiveHeight(context, 8)),
                              AspectRatio(
                                aspectRatio: 16 / 9,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: accentColor.withOpacity(0.1),
                                        blurRadius: 15,
                                        spreadRadius: 2,
                                      ),
                                    ],
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: MyVideoPlayer(
                                      url: projectData[3],
                                      allowFullScreen: true,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: ResponsiveHeight(context, 8)),
                              SizedBox(
                                height: ResponsiveHeight(context, 150),
                                child: ListView.builder(
                                  scrollDirection: Axis.horizontal,
                                  itemCount: projectData[4].length,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      margin: EdgeInsets.only(right: ResponsiveWidth(context, 8)),
                                      width: ResponsiveWidth(context, 200),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        boxShadow: [
                                          BoxShadow(
                                            color: accentColor.withOpacity(0.1),
                                            blurRadius: 10,
                                            spreadRadius: 2,
                                          ),
                                        ],
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image.network(
                                          projectData[4][index],
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: ResponsiveHeight(context, 8)),
                      // Links Section in a glass container.
                      GlassContainer(
                        primaryColor: primaryColor,
                        accentColor: accentColor,
                        child: Padding(
                          padding: EdgeInsets.all(ResponsiveWidth(context, 10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Project Links',
                                style: TextStyle(
                                  color: accentColor,
                                  fontSize: ResponsiveWidth(context, 18),
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(height: ResponsiveHeight(context, 6)),
                              Wrap(
                                spacing: ResponsiveWidth(context, 8),
                                runSpacing: ResponsiveHeight(context, 8),
                                children: [
                                  if (projectData[5]["app"] != null && projectData[5]["app"] != "")
                                    _buildLinkButton(context, "Live Demo", Icons.android, projectData[5]["app"]),
                                  if (projectData[5]["website"] != null && projectData[5]["website"] != "")
                                    _buildLinkButton(context, "Website", Icons.public, projectData[5]["website"]),
                                  if (projectData[5]["github"] != null && projectData[5]["github"] != "")
                                    _buildLinkButton(context, "GitHub", Icons.code, projectData[5]["github"]),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: ResponsiveHeight(context, 20)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLinkButton(BuildContext context, String label, IconData icon, String url) {
    return OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
        foregroundColor: accentColor,
        side: BorderSide(color: accentColor.withOpacity(0.5)),
        padding: EdgeInsets.symmetric(
          horizontal: ResponsiveWidth(context, 12),
          vertical: ResponsiveHeight(context, 6),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      icon: Icon(icon, size: ResponsiveWidth(context, 16)),
      label: Text(label, style: TextStyle(fontSize: ResponsiveWidth(context, 14))),
      onPressed: () => LaunchURL(url: url),
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

// Animated background widget for mobile using a CustomPainter.
class AnimatedMobileBackground extends StatefulWidget {
  final Color accentColor;
  final Animation<double> animation;

  const AnimatedMobileBackground({
    Key? key,
    required this.accentColor,
    required this.animation,
  }) : super(key: key);

  @override
  _AnimatedMobileBackgroundState createState() => _AnimatedMobileBackgroundState();
}

class _AnimatedMobileBackgroundState extends State<AnimatedMobileBackground> {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: widget.animation,
      builder: (context, child) {
        return CustomPaint(
          size: Size.infinite,
          painter: MobileGlowingBackgroundPainter(
            accentColor: widget.accentColor,
            animationValue: widget.animation.value,
          ),
        );
      },
    );
  }
}

class MobileGlowingBackgroundPainter extends CustomPainter {
  final Color accentColor;
  final double animationValue;

  MobileGlowingBackgroundPainter({required this.accentColor, required this.animationValue});

  @override
  void paint(Canvas canvas, Size size) {
    final double pi2 = 2 * pi;
    double offset1 = sin(animationValue * pi2) * 40;
    double offset2 = cos(animationValue * pi2) * 45;

    // First glowing line.
    final paint1 = Paint()
      ..color = accentColor.withOpacity(0.35)
      ..strokeWidth = 8
      ..style = PaintingStyle.stroke
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, 12);
    final path1 = Path();
    path1.moveTo(0, size.height * 0.2 + offset1);
    path1.quadraticBezierTo(
      size.width * 0.3, size.height * 0.15 + offset2,
      size.width * 0.6, size.height * 0.25 + offset1,
    );
    path1.quadraticBezierTo(
      size.width * 0.8, size.height * 0.35 + offset2,
      size.width, size.height * 0.3 + offset1,
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
      size.width * 0.25, size.height * 0.55 + offset1,
      size.width * 0.75, size.height * 0.45 + offset2,
      size.width, size.height * 0.5 + offset1,
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
      size.width * 0.5, size.height * 0.9 + offset1,
      size.width, size.height * 0.75 + offset2,
    );
    canvas.drawPath(path4, paint4);
  }

  @override
  bool shouldRepaint(covariant MobileGlowingBackgroundPainter oldDelegate) {
    return oldDelegate.animationValue != animationValue;
  }
}

// Custom clipper for the mobile header to create a wavy bottom edge.
class MobileHeaderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height - 40);
    path.quadraticBezierTo(size.width / 2, size.height + 20, size.width, size.height - 40);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
