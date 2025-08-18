import 'dart:html' as html;
import 'package:flutter/foundation.dart';

class MetaTags {
  static void updateMetaTags({
    required String title,
    required String description,
    required String keywords,
    required String imageUrl,
  }) {
    if (!kIsWeb) return;

    // Update title
    html.document.title = title;
    _updateMetaTag('description', description);
    _updateMetaTag('keywords', keywords);
    
    // Update OG tags
    _updateMetaTag('og:title', title, property: true);
    _updateMetaTag('og:description', description, property: true);
    _updateMetaTag('og:image', imageUrl, property: true);
    _updateMetaTag('og:url', html.window.location.href, property: true);
    
    // Update Twitter tags
    _updateMetaTag('twitter:title', title);
    _updateMetaTag('twitter:description', description);
    _updateMetaTag('twitter:image', imageUrl);
  }

  static void _updateMetaTag(String name, String content, {bool property = false}) {
    final attributeName = property ? 'property' : 'name';
    final selector = 'meta[$attributeName="$name"]';
    
    html.MetaElement? meta = html.document.querySelector(selector) as html.MetaElement?;
    
    if (meta == null) {
      meta = html.MetaElement();
      if (property) {
        meta.setAttribute('property', name);
      } else {
        meta.name = name;
      }
      html.document.head!.append(meta);
    }
    
    meta.content = content;
  }
}