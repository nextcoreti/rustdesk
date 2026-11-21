// NextCore brand palette for the RustDesk desktop client.
//
// Every color/font the NextCore theme changes lives here. The upstream files
// only reference these constants (see NEXTCORE.md at the repo root), so a new
// RustDesk version is ported by re-pointing a handful of lines, and the palette
// itself is edited in this one file.
//
// Values mirror the approved "Exemplo de marca completa" mockup.
import 'package:flutter/material.dart';

class NcBrand {
  NcBrand._();

  // ---- shared (light + dark) ----
  // RDGEN's "Accent Color" build option rewrites these three lines.
  static const Color accent = Color(0xFF7B1FA2);
  static const Color accent50 = Color(0x777B1FA2);
  static const Color accent80 = Color(0xAA7B1FA2);

  static const Color statusStart = Color(0xFF6A1B9A); // status card gradient
  static const Color statusEnd = Color(0xFFAB47BC);
  static const Color passwordIcons = Color(0xFFCBBFD9); // refresh / edit
  static const Color svcReady = Color(0xFF2BB39A); // bottom bar: ready
  static const Color svcError = Color(0xFFD9465A); // bottom bar: not ready
  static const Color warn = Color(0xFFF08A3C); // service stopped + peer offline
  static const Color online = Color(0xFF3FB950); // peer online dot

  // ---- light theme ----
  static const Color lightBg1 = Color(0xFFFFFFFF); // scaffold (right pane)
  static const Color lightBg2 = Color(0xFFF4F0F9); // left pane, peer cards
  static const Color lightText = Color(0xFF1D1A22);
  static const Color lightDivider = Color(0xFFE7E0F0);
  static const Color lightTabSel = Color(0xFF7B1FA2);
  static const Color lightTabUn = Color(0xFF7A7385);
  static const Color lightHover = Color(0xFFEDE5F7);
  static const Color lightHint = Color(0xFFA097AD);

  // ---- dark theme ----
  static const Color darkBg1 = Color(0xFF16131B);
  static const Color darkBg2 = Color(0xFF221D2A);
  static const Color darkText = Color(0xFFF4F0FA);
  static const Color darkDivider = Color(0xFF342D3F);
  static const Color darkTabSel = Color(0xFFC792FF);
  static const Color darkTabUn = Color(0xFFA79FB3);
  static const Color darkHover = Color(0xFF2E2639);
  static const Color darkHint = Color(0xFF7F7690);

  // ---- ID / one-time password typography (home left pane) ----
  // 20 keeps a 10-digit ID ("1 761 356 770") on one line in the 200px pane.
  static const String idFontFamily = 'Inter';
  static const FontWeight idFontWeight = FontWeight.w600;
  static const double idFontSize = 20;
  static const double passwordFontSize = 14;
}
