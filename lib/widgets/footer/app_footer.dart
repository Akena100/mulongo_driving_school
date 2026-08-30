import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/constants/app_constants.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/google_fonts_stub.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 800;
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Container(
      width: double.infinity,
      color: isDarkMode ? const Color(0xFF0F1419) : AppColors.darkGrey,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 20 : 40,
        vertical: isMobile ? 40 : 60,
      ),
      child: Column(
        children: [
          // Main Footer Content
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: isMobile ? 2 : 4,
            mainAxisSpacing: 40,
            crossAxisSpacing: 20,
            childAspectRatio: isMobile ? 1.2 : 1.5,
            children: [
              // Company Section (only existing pages)
              _FooterSection(
                title: 'Company',
                items: [
                  _FooterLink(label: 'Home', route: '/'),
                  _FooterLink(label: 'About Us', route: '/about'),
                  _FooterLink(label: 'Courses', route: '/courses'),
                  _FooterLink(label: 'Services', route: '/services'),
                  _FooterLink(label: 'Contact', route: '/contact'),
                ],
              ),

              // Services Section
              _FooterSection(
                title: 'Services',
                items: [
                  _FooterLink(label: 'All Services', route: '/services'),
                  _FooterLink(label: 'Driving Lessons', route: '/services'),
                  _FooterLink(label: 'Vehicle Training', route: '/services'),
                ],
              ),

              // Support Section
              _FooterSection(
                title: 'Support',
                items: [
                  _FooterLink(label: 'Help & FAQ', route: '/faq'),
                  _FooterLink(label: 'Contact Support', route: '/contact'),
                ],
              ),

              // Contact Section
              _FooterSection(
                title: 'Connect',
                items: [
                  _FooterContactInfo(
                    icon: FontAwesomeIcons.phone,
                    label: AppConstants.phoneNumber,
                    url: 'tel:${AppConstants.phoneNumber.replaceAll('+', '')}',
                  ),
                  _FooterContactInfo(
                    icon: FontAwesomeIcons.phone,
                    label: AppConstants.phoneNumberAlt,
                    url:
                        'tel:${AppConstants.phoneNumberAlt.replaceAll('+', '')}',
                  ),
                  _FooterContactInfo(
                    icon: FontAwesomeIcons.phone,
                    label: AppConstants.phoneNumberAlt2,
                    url:
                        'tel:${AppConstants.phoneNumberAlt2.replaceAll('+', '')}',
                  ),
                  _FooterContactInfo(
                    icon: FontAwesomeIcons.envelope,
                    label: AppConstants.email,
                    url: 'mailto:${AppConstants.email}',
                  ),
                  _FooterContactInfo(
                    icon: FontAwesomeIcons.whatsapp,
                    label: 'WhatsApp',
                    url:
                        'https://wa.me/${AppConstants.whatsappNumber.replaceAll('+', '')}',
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 60),

          // Divider
          Container(height: 1, color: Colors.white.withAlpha(26)),

          const SizedBox(height: 40),

          // Bottom Footer
          isMobile
              ? Column(
                  children: [
                    Text(
                      '© 2024 ${AppConstants.schoolName}. All rights reserved.',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.white.withAlpha(200),
                      ),
                    ).animate().fadeIn(duration: 600.ms),
                    const SizedBox(height: 16),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        _SocialIcon(
                          icon: FontAwesomeIcons.facebook,
                          url: '/contact',
                          color: const Color(0xFF1877F2),
                        ),
                        const SizedBox(width: 16),
                        _SocialIcon(
                          icon: FontAwesomeIcons.instagram,
                          url: '/contact',
                          color: const Color(0xFFE4405F),
                        ),
                        const SizedBox(width: 16),
                        _SocialIcon(
                          icon: FontAwesomeIcons.tiktok,
                          url: '/contact',
                          color: Colors.black,
                        ),
                        const SizedBox(width: 12),
                        _SocialIcon(
                          icon: FontAwesomeIcons.linkedin,
                          url: '/contact',
                          color: const Color.fromARGB(255, 35, 108, 203),
                        ),
                        const SizedBox(width: 12),
                        _SocialIcon(
                          icon: FontAwesomeIcons.xTwitter,
                          url: '/contact',
                          color: Colors.black,
                        ),
                        const SizedBox(width: 30),
                      ],
                    ),
                  ],
                )
              : Wrap(
                  alignment: WrapAlignment.spaceBetween,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  runSpacing: 12,
                  spacing: 16,
                  children: [
                    Text(
                      '© 2024 ${AppConstants.schoolName}. All rights reserved.',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.white.withAlpha(200),
                      ),
                    ),
                    Wrap(
                      spacing: 12,
                      runSpacing: 12,
                      children: [
                        _SocialIcon(
                          icon: FontAwesomeIcons.facebook,
                          url: '/contact',
                          color: const Color(0xFF1877F2),
                        ),
                        _SocialIcon(
                          icon: FontAwesomeIcons.instagram,
                          url: '/contact',
                          color: const Color(0xFFE4405F),
                        ),
                        _SocialIcon(
                          icon: FontAwesomeIcons.tiktok,
                          url: '/contact',
                          color: Colors.black,
                        ),
                        _SocialIcon(
                          icon: FontAwesomeIcons.linkedin,
                          url: '/contact',
                          color: const Color.fromARGB(255, 35, 108, 203),
                        ),
                        _SocialIcon(
                          icon: FontAwesomeIcons.xTwitter,
                          url: '/contact',
                          color: Colors.black,
                        ),
                      ],
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}

class _FooterSection extends StatelessWidget {
  final String title;
  final List<dynamic> items;

  const _FooterSection({required this.title, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            fontSize: 15,
            fontWeight: FontWeight.w700,
            color: AppColors.white,
            letterSpacing: 0.5,
          ),
        ),
        const SizedBox(height: 10),
        ...items.asMap().entries.map((entry) {
          dynamic item = entry.value;

          return Padding(
            padding: const EdgeInsets.only(bottom: 6),
            child: item,
          );
        }),
      ],
    );
  }
}

class _FooterLink extends StatefulWidget {
  final String label;
  final String route;

  const _FooterLink({required this.label, required this.route});

  @override
  State<_FooterLink> createState() => _FooterLinkState();
}

class _FooterLinkState extends State<_FooterLink> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => context.go(widget.route),
        child: AnimatedDefaultTextStyle(
          duration: const Duration(milliseconds: 200),
          style: GoogleFonts.poppins(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: _isHovered ? AppColors.info : Colors.white.withAlpha(220),
          ),
          curve: Curves.easeInOut,
          child: Text(widget.label),
        ),
      ),
    );
  }
}

class _FooterContactInfo extends StatelessWidget {
  final FaIconData icon;
  final String label;
  final String? url;

  const _FooterContactInfo({required this.icon, required this.label, this.url});

  Future<void> _handleTap(BuildContext context) async {
    if (url == null) return;
    final uri = Uri.parse(url!);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else if (context.mounted) {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Could not open $url')));
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _handleTap(context),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FaIcon(icon, size: 18, color: AppColors.primary),
          const SizedBox(width: 10),
          Flexible(
            child: Text(
              label,
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Colors.white.withAlpha(230),
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}

class _SocialIcon extends StatefulWidget {
  final FaIconData icon;
  final String url;
  final Color color;

  const _SocialIcon({
    required this.icon,
    required this.url,
    required this.color,
  });

  @override
  State<_SocialIcon> createState() => _SocialIconState();
}

class _SocialIconState extends State<_SocialIcon> {
  bool _isHovered = false;

  void _launchURL(String url) async {
    try {
      if (url.startsWith('/')) {
        // internal route
        if (context.mounted) context.go(url);
        return;
      }

      if (await canLaunchUrl(Uri.parse(url))) {
        await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text('Could not launch $url')));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => _launchURL(widget.url),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: _isHovered ? widget.color : AppColors.lightGrey,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(
              color: _isHovered ? widget.color : AppColors.borderGrey,
            ),
            boxShadow: _isHovered
                ? [
                    BoxShadow(
                      color: widget.color.withAlpha(77),
                      blurRadius: 12,
                      offset: const Offset(0, 4),
                    ),
                  ]
                : null,
          ),
          child: Center(
            child: FaIcon(
              widget.icon,
              color: _isHovered ? AppColors.white : widget.color,
              size: 22,
            ),
          ),
        ),
      ),
    );
  }
}
