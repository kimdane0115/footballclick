enum Flavor {
  dev,
  staging,
  prod,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.dev:
        return '풋볼클릭(dev)';
      case Flavor.staging:
        return '풋볼클릭(staging)';
      case Flavor.prod:
        return '풋볼클릭';
      default:
        return 'title';
    }
  }

  static String get supabaseUrl {
    switch (appFlavor) {
      case Flavor.dev:
        return 'https://oqlmwguwanntgrwwhrns.supabase.co';
      case Flavor.staging:
        return 'https://oqlmwguwanntgrwwhrns.supabase.co';
      case Flavor.prod:
        return 'https://oqlmwguwanntgrwwhrns.supabase.co';
      default:
        return 'https://oqlmwguwanntgrwwhrns.supabase.co';
    }
  }

  static String get supabaseAnonKey {
    switch (appFlavor) {
      case Flavor.dev:
        return 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9xbG13Z3V3YW5udGdyd3docm5zIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTY0NzI0NDgsImV4cCI6MjAzMjA0ODQ0OH0.bVG-dwIOFkmeEde2E2paTJC1IgyqOydPnNXkWXqhYfw';
      case Flavor.staging:
        return 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9xbG13Z3V3YW5udGdyd3docm5zIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTY0NzI0NDgsImV4cCI6MjAzMjA0ODQ0OH0.bVG-dwIOFkmeEde2E2paTJC1IgyqOydPnNXkWXqhYfw';
      case Flavor.prod:
        return 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9xbG13Z3V3YW5udGdyd3docm5zIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTY0NzI0NDgsImV4cCI6MjAzMjA0ODQ0OH0.bVG-dwIOFkmeEde2E2paTJC1IgyqOydPnNXkWXqhYfw';
      default:
        return 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im9xbG13Z3V3YW5udGdyd3docm5zIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTY0NzI0NDgsImV4cCI6MjAzMjA0ODQ0OH0.bVG-dwIOFkmeEde2E2paTJC1IgyqOydPnNXkWXqhYfw';
    }
  }

}
