import 'package:flutter/material.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/google_fonts_stub.dart';
import '../../widgets/footer/app_footer.dart';
import '../../widgets/navigation/app_header.dart';

enum SignCategory { information, regulatory, warning }

class RoadSign {
  final String name;
  final String assetPath;
  final SignCategory category;

  const RoadSign({
    required this.name,
    required this.assetPath,
    required this.category,
  });

  String get categoryLabel {
    switch (category) {
      case SignCategory.information:
        return 'Information';
      case SignCategory.regulatory:
        return 'Mandatory & Regulatory';
      case SignCategory.warning:
        return 'Warning';
    }
  }

  String get description {
    return signDescriptions[name] ??
        'This $categoryLabel sign gives drivers important information for the road ahead.';
  }
}

const signDescriptions = <String, String>{
  'Airport': 'Shows the direction or route to an airport.',
  'Bus stop':
      'Marks a place where buses stop to pick up or drop off passengers.',
  'Camp site': 'Shows that a camping site is available nearby.',
  'End of extra lane': 'Shows that an additional lane is ending; merge safely.',
  'Filling station': 'Shows that a fuel station is available nearby.',
  'First aid': 'Shows where first-aid assistance can be found.',
  'Hospital': 'Shows the location or direction of a hospital.',
  'Hotel': 'Shows that a hotel is available nearby.',
  'Hump': 'Shows a raised hump in the road or a speed hump ahead.',
  'Information': 'Provides general road or route information for drivers.',
  'No through road':
      'Shows that the road does not continue through to another road.',
  'One way traffic': 'Shows that traffic travels in one direction only.',
  'Parking': 'Shows a place where vehicles may be parked.',
  'Pedestrians crossing': 'Marks a designated pedestrian crossing point.',
  'Police control': 'Shows that drivers may meet a police control point ahead.',
  'Priority over oncoming vehicles':
      'Gives your direction priority over vehicles coming toward you.',
  'Refreshments': 'Shows where food or drinks can be obtained nearby.',
  'Rest area': 'Shows a place where drivers may stop and rest.',
  'Restaurant': 'Shows that a restaurant is available nearby.',
  'Start of extra lane': 'Shows where an additional traffic lane begins.',
  'Telephone': 'Shows that a public telephone is available nearby.',
  'Workshop':
      'Shows that vehicle repair or mechanical help is available nearby.',
  'Axle weight limit':
      'Vehicles exceeding the displayed axle weight must not proceed.',
  'Bicycles only': 'Reserves this route or lane for bicycles.',
  'Buses only': 'Reserves this route or lane for buses.',
  'End of speed limit 50 km per hour':
      'Ends the previous 50 km/h speed restriction.',
  'Go straight ahead': 'Requires traffic to continue straight ahead.',
  'Go straight or turn left':
      'Allows or requires traffic to go straight or turn left.',
  'Gross weight limit':
      'Vehicles heavier than the displayed total weight must not proceed.',
  'Height limit': 'Vehicles taller than the displayed height must not proceed.',
  'No animal-drawn vehicles':
      'Animal-drawn vehicles are prohibited beyond this sign.',
  'No bicycles': 'Bicycles are prohibited beyond this sign.',
  'No buses': 'Buses are prohibited beyond this sign.',
  'No entry': 'No vehicles may enter from this direction.',
  'No left turn': 'Turning left is prohibited at this point.',
  'No motor vehicles': 'Motor vehicles are prohibited beyond this sign.',
  'No motorcycles': 'Motorcycles are prohibited beyond this sign.',
  'No overtaking': 'Vehicles must not overtake other vehicles on this section.',
  'No parking or waiting': 'Vehicles must not park or wait here.',
  'No pedestrians': 'Pedestrians are prohibited beyond this sign.',
  'No right turn': 'Turning right is prohibited at this point.',
  'No stopping or standing':
      'Vehicles must not stop or stand here, even briefly.',
  'No trucks':
      'Trucks or heavy goods vehicles are prohibited beyond this sign.',
  'No U-turn': 'Making a U-turn is prohibited at this point.',
  'Pass either side': 'Traffic may pass the obstruction on either side.',
  'Pass on the left': 'Requires traffic to pass the obstruction on its left.',
  'Pedestrians only': 'Reserves this route or area for pedestrians.',
  'Roundabout': 'Requires traffic to follow the roundabout direction shown.',
  'Speed limit 30 km per hour': 'The maximum permitted speed is 30 km/h.',
  'Go': 'Permits traffic to proceed when this temporary control is displayed.',
  'Stop': 'Requires traffic to stop at the temporary control point.',
  'Turn left ahead':
      'Requires drivers to turn left at the next junction or point.',
  'Turn left': 'Requires drivers to turn left here.',
  'Turn right ahead':
      'Requires drivers to turn right at the next junction or point.',
  'Turn right': 'Requires drivers to turn right here.',
  'Width limit': 'Vehicles wider than the displayed width must not proceed.',
  'Agricultural vehicles':
      'Warns of slow agricultural vehicles using the road ahead.',
  'Children': 'Warns that children may be crossing or near the road.',
  'Cross road': 'Warns that a crossroad junction is ahead.',
  'Crosswind': 'Warns of strong side winds that may affect vehicle control.',
  'Drift': 'Warns that vehicles may drift or skid on the road ahead.',
  'Falling rocks on left':
      'Warns of falling rocks from the left side of the road.',
  'Falling rocks on right':
      'Warns of falling rocks from the right side of the road.',
  'Height restriction': 'Warns that a low height restriction is ahead.',
  'Hump ahead': 'Warns that a road hump is ahead; reduce speed.',
  'Loose gravel': 'Warns that loose stones or gravel may reduce grip.',
  'Low flying aircraft':
      'Warns that aircraft may fly unusually low over the road.',
  'Narrow bridge': 'Warns that the road narrows at a bridge ahead.',
  'Other danger': 'Warns of a danger not covered by another warning sign.',
  'Pedestrian crossing ahead': 'Warns that a pedestrian crossing is ahead.',
  'Pedestrians': 'Warns that pedestrians may be on or beside the road.',
  'Quay or river bank':
      'Warns that the road runs beside an unprotected quay or river bank.',
  'Railway crossing with gate or barrier':
      'Warns of a railway crossing protected by a gate or barrier.',
  'Railway crossing without gate or barrier':
      'Warns of an unprotected railway crossing ahead.',
  'Roadworks': 'Warns that road construction or maintenance work is ahead.',
  'Roundabout ahead': 'Warns that a roundabout is ahead; prepare to slow down.',
  'Side road': 'Warns that a side road joins the main road ahead.',
  'Slippery road': 'Warns that the road may be slippery, especially when wet.',
  'Staggered intersection': 'Warns of staggered junctions ahead.',
  'Steep ascent': 'Warns of a steep uphill section ahead.',
  'Steep descent': 'Warns of a steep downhill section ahead.',
  'Stop ahead': 'Warns that a stop sign or stop line is ahead.',
  'T-intersection': 'Warns that the road ends at a T-junction ahead.',
  'Traffic signals ahead': 'Warns that traffic lights are ahead.',
  'Two way traffic': 'Warns that traffic travels in both directions ahead.',
  'Uneven road': 'Warns that the road surface is uneven ahead.',
  'Wild animals': 'Warns that wild animals may cross the road ahead.',
  'Y-intersection':
      'Warns of a Y-shaped junction where the road divides ahead.',
};

class RoadSignsPage extends StatefulWidget {
  const RoadSignsPage({super.key});

  @override
  State<RoadSignsPage> createState() => _RoadSignsPageState();
}

class _RoadSignsPageState extends State<RoadSignsPage> {
  final TextEditingController _searchController = TextEditingController();
  SignCategory? _selectedCategory;
  String _searchQuery = '';

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  List<RoadSign> get _filteredSigns {
    final query = _searchQuery.trim().toLowerCase();
    return roadSigns.where((sign) {
      final matchesCategory =
          _selectedCategory == null || sign.category == _selectedCategory;
      final matchesSearch =
          query.isEmpty || sign.name.toLowerCase().contains(query);
      return matchesCategory && matchesSearch;
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    final signs = _filteredSigns;

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppHeader(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _HeroSection(totalSigns: roadSigns.length),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 36, 20, 64),
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 1180),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _SearchAndFilters(
                      controller: _searchController,
                      selectedCategory: _selectedCategory,
                      onSearchChanged: (value) =>
                          setState(() => _searchQuery = value),
                      onCategoryChanged: (value) =>
                          setState(() => _selectedCategory = value),
                    ),
                    const SizedBox(height: 28),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${signs.length} signs to explore',
                          style: GoogleFonts.poppins(
                            color: AppColors.textPrimary,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        if (_selectedCategory != null ||
                            _searchQuery.isNotEmpty)
                          TextButton.icon(
                            onPressed: () {
                              _searchController.clear();
                              setState(() {
                                _selectedCategory = null;
                                _searchQuery = '';
                              });
                            },
                            icon: const Icon(Icons.refresh_rounded, size: 18),
                            label: const Text('Reset'),
                          ),
                      ],
                    ),
                    const SizedBox(height: 14),
                    if (signs.isEmpty)
                      _EmptyState(
                        onReset: () {
                          _searchController.clear();
                          setState(() {
                            _selectedCategory = null;
                            _searchQuery = '';
                          });
                        },
                      )
                    else
                      LayoutBuilder(
                        builder: (context, constraints) {
                          final columns = constraints.maxWidth >= 980
                              ? 4
                              : constraints.maxWidth >= 620
                              ? 3
                              : 2;
                          return GridView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: signs.length,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: columns,
                                  crossAxisSpacing: 16,
                                  mainAxisSpacing: 16,
                                  childAspectRatio: .79,
                                ),
                            itemBuilder: (context, index) => _SignCard(
                              sign: signs[index],
                              onTap: () =>
                                  _showSignDetails(context, signs[index]),
                            ),
                          );
                        },
                      ),
                  ],
                ),
              ),
            ),
            const AppFooter(),
          ],
        ),
      ),
    );
  }

  void _showSignDetails(BuildContext context, RoadSign sign) {
    showDialog<void>(
      context: context,
      builder: (context) => Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: 460),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        sign.name,
                        style: GoogleFonts.poppins(
                          color: AppColors.textPrimary,
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    IconButton(
                      tooltip: 'Close',
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.close_rounded),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Center(
                  child: Container(
                    height: 220,
                    width: double.infinity,
                    padding: const EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      color: AppColors.background,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Image.asset(sign.assetPath, fit: BoxFit.contain),
                  ),
                ),
                const SizedBox(height: 20),
                _CategoryBadge(category: sign.category),
                const SizedBox(height: 12),
                Text(
                  sign.description,
                  style: GoogleFonts.poppins(
                    color: AppColors.textSecondary,
                    height: 1.6,
                  ),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: double.infinity,
                  child: FilledButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Got it'),
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

class _HeroSection extends StatelessWidget {
  final int totalSigns;

  const _HeroSection({required this.totalSigns});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(20, 58, 20, 54),
      decoration: const BoxDecoration(gradient: AppColors.primaryGradient),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1180),
        child: LayoutBuilder(
          builder: (context, constraints) => Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ROAD SIGNS',
                      style: GoogleFonts.poppins(
                        color: Colors.white.withValues(alpha: .75),
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1.8,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      'Read the road\nwith confidence.',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: constraints.maxWidth < 500 ? 32 : 46,
                        height: 1.08,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'A quick, visual guide to the signs every learner driver should know.',
                      style: GoogleFonts.poppins(
                        color: Colors.white.withValues(alpha: .88),
                        fontSize: 15,
                        height: 1.6,
                      ),
                    ),
                    const SizedBox(height: 24),
                    Row(
                      children: [
                        const Icon(
                          Icons.library_books_rounded,
                          color: Colors.white,
                          size: 19,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          '$totalSigns signs in 3 categories',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              if (constraints.maxWidth >= 600) ...[
                const SizedBox(width: 30),
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: .12),
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.white.withValues(alpha: .25),
                    ),
                  ),
                  child: const Icon(
                    Icons.traffic_rounded,
                    color: Colors.white,
                    size: 76,
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

class _SearchAndFilters extends StatelessWidget {
  final TextEditingController controller;
  final SignCategory? selectedCategory;
  final ValueChanged<String> onSearchChanged;
  final ValueChanged<SignCategory?> onCategoryChanged;

  const _SearchAndFilters({
    required this.controller,
    required this.selectedCategory,
    required this.onSearchChanged,
    required this.onCategoryChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextField(
          controller: controller,
          onChanged: onSearchChanged,
          decoration: InputDecoration(
            hintText: 'Search signs, for example "hospital" or "turn"',
            prefixIcon: const Icon(Icons.search_rounded),
            suffixIcon: controller.text.isEmpty
                ? null
                : IconButton(
                    tooltip: 'Clear search',
                    onPressed: () {
                      controller.clear();
                      onSearchChanged('');
                    },
                    icon: const Icon(Icons.clear_rounded),
                  ),
            filled: true,
            fillColor: Theme.of(context).cardColor,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(14),
              borderSide: BorderSide.none,
            ),
          ),
        ),
        const SizedBox(height: 16),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              _FilterChip(
                label: 'All signs',
                icon: Icons.grid_view_rounded,
                selected: selectedCategory == null,
                onTap: () => onCategoryChanged(null),
              ),
              const SizedBox(width: 10),
              _FilterChip(
                label: 'Information',
                icon: Icons.info_outline_rounded,
                selected: selectedCategory == SignCategory.information,
                onTap: () => onCategoryChanged(SignCategory.information),
              ),
              const SizedBox(width: 10),
              _FilterChip(
                label: 'Mandatory & regulatory',
                icon: Icons.block_rounded,
                selected: selectedCategory == SignCategory.regulatory,
                onTap: () => onCategoryChanged(SignCategory.regulatory),
              ),
              const SizedBox(width: 10),
              _FilterChip(
                label: 'Warning',
                icon: Icons.warning_amber_rounded,
                selected: selectedCategory == SignCategory.warning,
                onTap: () => onCategoryChanged(SignCategory.warning),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _FilterChip extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool selected;
  final VoidCallback onTap;

  const _FilterChip({
    required this.label,
    required this.icon,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      label: Text(label),
      avatar: Icon(icon, size: 17),
      selected: selected,
      onSelected: (_) => onTap(),
      selectedColor: AppColors.blueLight,
      labelStyle: TextStyle(
        color: selected ? AppColors.blueDark : AppColors.textSecondary,
        fontWeight: selected ? FontWeight.w700 : FontWeight.w500,
      ),
      side: BorderSide(color: selected ? AppColors.blue : AppColors.border),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    );
  }
}

class _SignCard extends StatelessWidget {
  final RoadSign sign;
  final VoidCallback onTap;

  const _SignCard({required this.sign, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
        side: const BorderSide(color: AppColors.border),
      ),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: AppColors.background,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(sign.assetPath, fit: BoxFit.contain),
                ),
              ),
              const SizedBox(height: 12),
              Text(
                sign.name,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.poppins(
                  color: AppColors.textPrimary,
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 7),
              Row(
                children: [
                  Expanded(child: _CategoryBadge(category: sign.category)),
                  const Icon(
                    Icons.arrow_forward_rounded,
                    color: AppColors.blue,
                    size: 18,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CategoryBadge extends StatelessWidget {
  final SignCategory category;

  const _CategoryBadge({required this.category});

  @override
  Widget build(BuildContext context) {
    final isWarning = category == SignCategory.warning;
    final isRegulatory = category == SignCategory.regulatory;
    final color = isWarning
        ? AppColors.red
        : isRegulatory
        ? AppColors.orangeDark
        : AppColors.blue;
    return Text(
      category == SignCategory.regulatory
          ? 'REGULATORY'
          : category.name.toUpperCase(),
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        color: color,
        fontSize: 10,
        fontWeight: FontWeight.w800,
        letterSpacing: .5,
      ),
    );
  }
}

class _EmptyState extends StatelessWidget {
  final VoidCallback onReset;

  const _EmptyState({required this.onReset});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(42),
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          const Icon(
            Icons.search_off_rounded,
            size: 46,
            color: AppColors.textMuted,
          ),
          const SizedBox(height: 12),
          Text(
            'No signs found',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 6),
          const Text('Try another search or browse all categories.'),
          const SizedBox(height: 16),
          OutlinedButton(
            onPressed: onReset,
            child: const Text('Show all signs'),
          ),
        ],
      ),
    );
  }
}

const roadSigns = <RoadSign>[
  RoadSign(
    name: 'Airport',
    assetPath: 'assets/information signs/Airport.webp',
    category: SignCategory.information,
  ),
  RoadSign(
    name: 'Bus stop',
    assetPath: 'assets/information signs/Bus stop.webp',
    category: SignCategory.information,
  ),
  RoadSign(
    name: 'Camp site',
    assetPath: 'assets/information signs/Camp site.webp',
    category: SignCategory.information,
  ),
  RoadSign(
    name: 'End of extra lane',
    assetPath: 'assets/information signs/End of extra lane.webp',
    category: SignCategory.information,
  ),
  RoadSign(
    name: 'Filling station',
    assetPath: 'assets/information signs/Filling Station.webp',
    category: SignCategory.information,
  ),
  RoadSign(
    name: 'First aid',
    assetPath: 'assets/information signs/First aid.webp',
    category: SignCategory.information,
  ),
  RoadSign(
    name: 'Hospital',
    assetPath: 'assets/information signs/Hospital.webp',
    category: SignCategory.information,
  ),
  RoadSign(
    name: 'Hotel',
    assetPath: 'assets/information signs/Hotel.webp',
    category: SignCategory.information,
  ),
  RoadSign(
    name: 'Hump',
    assetPath: 'assets/information signs/Hump.webp',
    category: SignCategory.information,
  ),
  RoadSign(
    name: 'Information',
    assetPath: 'assets/information signs/Information.webp',
    category: SignCategory.information,
  ),
  RoadSign(
    name: 'No through road',
    assetPath: 'assets/information signs/No through road.webp',
    category: SignCategory.information,
  ),
  RoadSign(
    name: 'One way traffic',
    assetPath: 'assets/information signs/One way traffic.webp',
    category: SignCategory.information,
  ),
  RoadSign(
    name: 'Parking',
    assetPath: 'assets/information signs/Parking.webp',
    category: SignCategory.information,
  ),
  RoadSign(
    name: 'Pedestrians crossing',
    assetPath: 'assets/information signs/Pedestrians crossing.webp',
    category: SignCategory.information,
  ),
  RoadSign(
    name: 'Police control',
    assetPath: 'assets/information signs/Police control.webp',
    category: SignCategory.information,
  ),
  RoadSign(
    name: 'Priority over oncoming vehicles',
    assetPath: 'assets/information signs/Priority over oncoming vehucles.webp',
    category: SignCategory.information,
  ),
  RoadSign(
    name: 'Refreshments',
    assetPath: 'assets/information signs/Refreshments.webp',
    category: SignCategory.information,
  ),
  RoadSign(
    name: 'Rest area',
    assetPath: 'assets/information signs/Rest area.webp',
    category: SignCategory.information,
  ),
  RoadSign(
    name: 'Restaurant',
    assetPath: 'assets/information signs/Restaurant.webp',
    category: SignCategory.information,
  ),
  RoadSign(
    name: 'Start of extra lane',
    assetPath: 'assets/information signs/Start of extra lane.webp',
    category: SignCategory.information,
  ),
  RoadSign(
    name: 'Telephone',
    assetPath: 'assets/information signs/Telephone.webp',
    category: SignCategory.information,
  ),
  RoadSign(
    name: 'Workshop',
    assetPath: 'assets/information signs/Workshop.webp',
    category: SignCategory.information,
  ),
  RoadSign(
    name: 'Axle weight limit',
    assetPath: 'assets/mandatory or regulatory signs/Axle weight limit.webp',
    category: SignCategory.regulatory,
  ),
  RoadSign(
    name: 'Bicycles only',
    assetPath: 'assets/mandatory or regulatory signs/Bicycles only.webp',
    category: SignCategory.regulatory,
  ),
  RoadSign(
    name: 'Buses only',
    assetPath: 'assets/mandatory or regulatory signs/Buses only.webp',
    category: SignCategory.regulatory,
  ),
  RoadSign(
    name: 'End of speed limit 50 km per hour',
    assetPath:
        'assets/mandatory or regulatory signs/End of speed limit 50 km per hour.webp',
    category: SignCategory.regulatory,
  ),
  RoadSign(
    name: 'Go straight ahead',
    assetPath: 'assets/mandatory or regulatory signs/Go straight ahead.webp',
    category: SignCategory.regulatory,
  ),
  RoadSign(
    name: 'Go straight or turn left',
    assetPath:
        'assets/mandatory or regulatory signs/Go straight or turn left.webp',
    category: SignCategory.regulatory,
  ),
  RoadSign(
    name: 'Gross weight limit',
    assetPath: 'assets/mandatory or regulatory signs/Gross weight limit.webp',
    category: SignCategory.regulatory,
  ),
  RoadSign(
    name: 'Height limit',
    assetPath: 'assets/mandatory or regulatory signs/Height limit.webp',
    category: SignCategory.regulatory,
  ),
  RoadSign(
    name: 'No animal-drawn vehicles',
    assetPath:
        'assets/mandatory or regulatory signs/No animal-drawn vehicles.webp',
    category: SignCategory.regulatory,
  ),
  RoadSign(
    name: 'No bicycles',
    assetPath: 'assets/mandatory or regulatory signs/No bicycles.webp',
    category: SignCategory.regulatory,
  ),
  RoadSign(
    name: 'No buses',
    assetPath: 'assets/mandatory or regulatory signs/No buses.webp',
    category: SignCategory.regulatory,
  ),
  RoadSign(
    name: 'No entry',
    assetPath: 'assets/mandatory or regulatory signs/No entry.webp',
    category: SignCategory.regulatory,
  ),
  RoadSign(
    name: 'No left turn',
    assetPath: 'assets/mandatory or regulatory signs/No left turn.webp',
    category: SignCategory.regulatory,
  ),
  RoadSign(
    name: 'No motor vehicles',
    assetPath: 'assets/mandatory or regulatory signs/No motor vehicles.webp',
    category: SignCategory.regulatory,
  ),
  RoadSign(
    name: 'No motorcycles',
    assetPath: 'assets/mandatory or regulatory signs/No motorcycles.webp',
    category: SignCategory.regulatory,
  ),
  RoadSign(
    name: 'No overtaking',
    assetPath: 'assets/mandatory or regulatory signs/No overtaking.webp',
    category: SignCategory.regulatory,
  ),
  RoadSign(
    name: 'No parking or waiting',
    assetPath:
        'assets/mandatory or regulatory signs/No parking or waiting.webp',
    category: SignCategory.regulatory,
  ),
  RoadSign(
    name: 'No pedestrians',
    assetPath: 'assets/mandatory or regulatory signs/No pedestrians.webp',
    category: SignCategory.regulatory,
  ),
  RoadSign(
    name: 'No right turn',
    assetPath: 'assets/mandatory or regulatory signs/No right turn.webp',
    category: SignCategory.regulatory,
  ),
  RoadSign(
    name: 'No stopping or standing',
    assetPath:
        'assets/mandatory or regulatory signs/No stopping or standing.webp',
    category: SignCategory.regulatory,
  ),
  RoadSign(
    name: 'No trucks',
    assetPath: 'assets/mandatory or regulatory signs/No trucks.webp',
    category: SignCategory.regulatory,
  ),
  RoadSign(
    name: 'No U-turn',
    assetPath: 'assets/mandatory or regulatory signs/No U-turn.webp',
    category: SignCategory.regulatory,
  ),
  RoadSign(
    name: 'Pass either side',
    assetPath: 'assets/mandatory or regulatory signs/pass either side.webp',
    category: SignCategory.regulatory,
  ),
  RoadSign(
    name: 'Pass on the left',
    assetPath: 'assets/mandatory or regulatory signs/Pass on the left.webp',
    category: SignCategory.regulatory,
  ),
  RoadSign(
    name: 'Pedestrians only',
    assetPath: 'assets/mandatory or regulatory signs/Pedestrians only.webp',
    category: SignCategory.regulatory,
  ),
  RoadSign(
    name: 'Roundabout',
    assetPath: 'assets/mandatory or regulatory signs/round about.webp',
    category: SignCategory.regulatory,
  ),
  RoadSign(
    name: 'Speed limit 30 km per hour',
    assetPath:
        'assets/mandatory or regulatory signs/Speed limit (30 km per hour).webp',
    category: SignCategory.regulatory,
  ),
  RoadSign(
    name: 'Go',
    assetPath:
        'assets/mandatory or regulatory signs/Te,porary traffic control - GO.webp',
    category: SignCategory.regulatory,
  ),
  RoadSign(
    name: 'Stop',
    assetPath:
        'assets/mandatory or regulatory signs/Temporoary traffic control - STOP.webp',
    category: SignCategory.regulatory,
  ),
  RoadSign(
    name: 'Turn left ahead',
    assetPath: 'assets/mandatory or regulatory signs/Turn left ahead.webp',
    category: SignCategory.regulatory,
  ),
  RoadSign(
    name: 'Turn left',
    assetPath: 'assets/mandatory or regulatory signs/Turn left.webp',
    category: SignCategory.regulatory,
  ),
  RoadSign(
    name: 'Turn right ahead',
    assetPath: 'assets/mandatory or regulatory signs/Turn right ahead.webp',
    category: SignCategory.regulatory,
  ),
  RoadSign(
    name: 'Turn right',
    assetPath: 'assets/mandatory or regulatory signs/Turn right.webp',
    category: SignCategory.regulatory,
  ),
  RoadSign(
    name: 'Width limit',
    assetPath: 'assets/mandatory or regulatory signs/width limit.webp',
    category: SignCategory.regulatory,
  ),
  RoadSign(
    name: 'Agricultural vehicles',
    assetPath: 'assets/Warning signs/Agricultural vehicles.webp',
    category: SignCategory.warning,
  ),
  RoadSign(
    name: 'Children',
    assetPath: 'assets/Warning signs/Children.webp',
    category: SignCategory.warning,
  ),
  RoadSign(
    name: 'Cross road',
    assetPath: 'assets/Warning signs/Cross road.webp',
    category: SignCategory.warning,
  ),
  RoadSign(
    name: 'Crosswind',
    assetPath: 'assets/Warning signs/Crosswind.webp',
    category: SignCategory.warning,
  ),
  RoadSign(
    name: 'Drift',
    assetPath: 'assets/Warning signs/Drift.webp',
    category: SignCategory.warning,
  ),
  RoadSign(
    name: 'Falling rocks on left',
    assetPath: 'assets/Warning signs/Falling rocks on left.webp',
    category: SignCategory.warning,
  ),
  RoadSign(
    name: 'Falling rocks on right',
    assetPath: 'assets/Warning signs/Falling rocks on right.webp',
    category: SignCategory.warning,
  ),
  RoadSign(
    name: 'Height restriction',
    assetPath: 'assets/Warning signs/Height restriction.webp',
    category: SignCategory.warning,
  ),
  RoadSign(
    name: 'Hump ahead',
    assetPath: 'assets/Warning signs/Hump ahead.webp',
    category: SignCategory.warning,
  ),
  RoadSign(
    name: 'Loose gravel',
    assetPath: 'assets/Warning signs/Loose gravel.webp',
    category: SignCategory.warning,
  ),
  RoadSign(
    name: 'Low flying aircraft',
    assetPath: 'assets/Warning signs/Low flying aircraft.webp',
    category: SignCategory.warning,
  ),
  RoadSign(
    name: 'Narrow bridge',
    assetPath: 'assets/Warning signs/Narrow bridge.webp',
    category: SignCategory.warning,
  ),
  RoadSign(
    name: 'Other danger',
    assetPath: 'assets/Warning signs/Other danger.webp',
    category: SignCategory.warning,
  ),
  RoadSign(
    name: 'Pedestrian crossing ahead',
    assetPath: 'assets/Warning signs/Pedestrian crossing ahead.webp',
    category: SignCategory.warning,
  ),
  RoadSign(
    name: 'Pedestrians',
    assetPath: 'assets/Warning signs/Pedestrians.webp',
    category: SignCategory.warning,
  ),
  RoadSign(
    name: 'Quay or river bank',
    assetPath: 'assets/Warning signs/Quay or river bank.webp',
    category: SignCategory.warning,
  ),
  RoadSign(
    name: 'Railway crossing with gate or barrier',
    assetPath:
        'assets/Warning signs/Railway crossing with gaate or barrier.webp',
    category: SignCategory.warning,
  ),
  RoadSign(
    name: 'Railway crossing without gate or barrier',
    assetPath:
        'assets/Warning signs/Railway crossing without gate or barrier.webp',
    category: SignCategory.warning,
  ),
  RoadSign(
    name: 'Roadworks',
    assetPath: 'assets/Warning signs/Roadworks.webp',
    category: SignCategory.warning,
  ),
  RoadSign(
    name: 'Roundabout ahead',
    assetPath: 'assets/Warning signs/Roundabout road.webp',
    category: SignCategory.warning,
  ),
  RoadSign(
    name: 'Side road',
    assetPath: 'assets/Warning signs/Side road.webp',
    category: SignCategory.warning,
  ),
  RoadSign(
    name: 'Slippery road',
    assetPath: 'assets/Warning signs/Slippery road.webp',
    category: SignCategory.warning,
  ),
  RoadSign(
    name: 'Staggered intersection',
    assetPath: 'assets/Warning signs/Staggered intersection.webp',
    category: SignCategory.warning,
  ),
  RoadSign(
    name: 'Steep ascent',
    assetPath: 'assets/Warning signs/Steep ascent.webp',
    category: SignCategory.warning,
  ),
  RoadSign(
    name: 'Steep descent',
    assetPath: 'assets/Warning signs/Steep descent.webp',
    category: SignCategory.warning,
  ),
  RoadSign(
    name: 'Stop ahead',
    assetPath: 'assets/Warning signs/Stop.webp',
    category: SignCategory.warning,
  ),
  RoadSign(
    name: 'T-intersection',
    assetPath: 'assets/Warning signs/T-intersection.webp',
    category: SignCategory.warning,
  ),
  RoadSign(
    name: 'Traffic signals ahead',
    assetPath: 'assets/Warning signs/Traffic signals ahead.webp',
    category: SignCategory.warning,
  ),
  RoadSign(
    name: 'Two way traffic',
    assetPath: 'assets/Warning signs/Two way traffic.webp',
    category: SignCategory.warning,
  ),
  RoadSign(
    name: 'Uneven road',
    assetPath: 'assets/Warning signs/Uneven road.webp',
    category: SignCategory.warning,
  ),
  RoadSign(
    name: 'Wild animals',
    assetPath: 'assets/Warning signs/Wild animals.webp',
    category: SignCategory.warning,
  ),
  RoadSign(
    name: 'Y-intersection',
    assetPath: 'assets/Warning signs/Y-intersection.webp',
    category: SignCategory.warning,
  ),
];
