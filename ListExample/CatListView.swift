import SwiftUI

struct CatListView: View {

  private var viewModel = CatListViewModel()

  var body: some View {
    NavigationView {
      List(viewModel.names, id: \.self) { name in
        let weight = viewModel.weight(for: name) ?? 0
        NavigationLink(destination: CatDetailView(name: name, weight: weight)) {
          Text(name)
        }
      }
      .navigationTitle("Cats")
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    CatListView()
  }
}
