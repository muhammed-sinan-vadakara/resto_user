//
//  Generated file. Do not edit.
//

import FlutterMacOS
import Foundation


import geolocator_apple

func RegisterGeneratedPlugins(registry: FlutterPluginRegistry) {
  GeolocatorPlugin.register(with: registry.registrar(forPlugin: "GeolocatorPlugin"))

import cloud_firestore

import file_selector_macos
 41d6d4fd34efe870b5b2e7ba25fe02a5a06f0c11
import firebase_auth
import firebase_core
import firebase_storage

func RegisterGeneratedPlugins(registry: FlutterPluginRegistry) {
  FLTFirebaseFirestorePlugin.register(with: registry.registrar(forPlugin: "FLTFirebaseFirestorePlugin"))

  FileSelectorPlugin.register(with: registry.registrar(forPlugin: "FileSelectorPlugin"))
 41d6d4fd34efe870b5b2e7ba25fe02a5a06f0c11
  FLTFirebaseAuthPlugin.register(with: registry.registrar(forPlugin: "FLTFirebaseAuthPlugin"))
  FLTFirebaseCorePlugin.register(with: registry.registrar(forPlugin: "FLTFirebaseCorePlugin"))
  FLTFirebaseStoragePlugin.register(with: registry.registrar(forPlugin: "FLTFirebaseStoragePlugin"))

}
