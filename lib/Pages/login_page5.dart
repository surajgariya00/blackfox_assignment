import 'package:flutter/material.dart';

class LoginPage5 extends StatelessWidget {
  const LoginPage5({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/model.png'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildRatingAndLocation(),
                  _buildDescription('Fashion Photographer',
                      'I do all kinds of fashion photography.'),
                  _buildServiceProvided(),
                  _buildTags([
                    'SEO',
                    'Freelancing',
                    'Date',
                    'This',
                    'Nope',
                    'Publication'
                  ]),
                  _buildSectionTitle(
                    'About Me',
                  ),
                  _buildParagraph(
                      'Design a futuristic 3D skeleton model with a dynamic RGB lighting system set against a captivating space-themed background. Craft the skeleton to have a sleek, futuristic aesthetic, incorporating intricate details and streamlined features. Implement an RGB lighting scheme that pulsates or transitions smoothly across the skeleton, creating an engaging visual effect. Ensure compatibility with real-time rendering engines to maximize interactivity. The space-themed background should complement the futuristic theme, with stars, nebulae, or cosmic elements. Prioritize a balance between creativity and functionality, delivering a visually stunning 3D model ready for use in various digital or multimedia applications.'),
                  _buildSectionTitle('Skills'),
                  _buildTags([
                    'SEO',
                    'Freelancing',
                    'Date',
                    'This',
                    'Nope',
                    'Publication'
                  ]),
                  _buildImage('assets/1.png'),
                  _buildImage('assets/2.png'),
                  _buildImage('assets/3.png'),
                  _buildImage('assets/4.png'),
                  _buildImage('assets/5.png'),
                  const SizedBox(
                    height: 30,
                  ),
                  _buildClientFeedback(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRatingAndLocation() {
    return Padding(
      padding: const EdgeInsets.only(top: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [
              Icon(Icons.star, color: Colors.amber),
              Text('4.2 '),
            ],
          ),
          Container(
            width: 164.0,
            padding: const EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 6, 6, 6),
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: const Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 8.0, top: 8, bottom: 8),
                  child: Text(
                    'Faridabad, Haryana',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                Icon(
                  Icons.location_on_outlined,
                  color: Colors.white,
                  size: 19,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDescription(String title, String subtitle) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
          Text(
            subtitle,
            style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
          ),
        ],
      ),
    );
  }

  Widget _buildServiceProvided() {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: Text(
        'Service Provided',
        style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
      ),
    );
  }

  Widget _buildTags(List<String> tags) {
    return Wrap(
      spacing: 8.0,
      runSpacing: 8.0,
      children: tags.map((tag) => _buildTag(tag)).toList(),
    );
  }

  Widget _buildTag(String tagName) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 8),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 224, 247, 247),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Text(
        tagName,
        style: const TextStyle(
            color: Color.fromARGB(255, 3, 3, 3),
            fontSize: 16,
            fontWeight: FontWeight.w500),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Text(title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
    );
  }

  Widget _buildParagraph(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        text,
        style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
      ),
    );
  }

  Widget _buildImage(String assetPath) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Image.asset(assetPath),
      ],
    );
  }

  Widget _buildSSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Text(title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 28)),
    );
  }

  Widget _buildPParagraph(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        text,
        style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w300),
      ),
    );
  }

  Widget _buildClientFeedback() {
    return Center(
      child: SizedBox(
        width: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSSectionTitle('Client Feedback'),
            Row(
              children: [
                CircleAvatar(
                  child: Image.asset('assets/dp.png'),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'Jane Doe',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            _buildPParagraph(
                "I really appreciate the insights and perspective shared in this article. It's definitely given me something to think about and has helped me see things from a different angle. Thank you for writing and sharing!"),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                _buildStarIcon(),
                _buildStarIcon(),
                _buildStarIcon(),
                _buildEmptyStarIcon(),
                _buildEmptyStarIcon(),
                const Text('3/5'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: [
                CircleAvatar(
                  child: Image.asset('assets/dp.png'),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'Jane Doe',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            _buildPParagraph(
                "I really appreciate the insights and perspective shared in this article. It's definitely given me something to think about and has helped me see things from a different angle. Thank you for writing and sharing!"),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                _buildStarIcon(),
                _buildStarIcon(),
                _buildStarIcon(),
                _buildEmptyStarIcon(),
                _buildEmptyStarIcon(),
                const Text('3/5'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              height: 50,
              padding: const EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 237, 237, 237),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: const Center(
                child: Text(
                  'Load More',
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStarIcon() {
    return const Icon(Icons.star, color: Colors.amber);
  }

  Widget _buildEmptyStarIcon() {
    return const Icon(Icons.star_border, color: Colors.amber);
  }
}
