import SwiftUI


struct CatDetailView: View {
  var name: String
  var weight: Int

  var body: some View {
    VStack {
      Text("Cat Details")
        .font(.title)
        .padding()
      Text("\(name) weighs \(weight) kg")
      Spacer()
    }
  }
}

struct CatDetailView_Previews: PreviewProvider {
    static var previews: some View {
      CatDetailView(name: "Standard Cat", weight: 4)
    }
}
