import SwiftUI

struct AppointmentInfoCard: View {

    let title: String
    let desc: String
    let icon: String

    var body: some View {

        VStack(alignment: .leading, spacing: 0) {
            Image(systemName: icon)
                .font(.system(size: 20, weight: .regular))

            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(.system(size: 14, weight: .bold))
                    .padding(.top, 16)
                    .lineLimit(1)
                    .minimumScaleFactor(0.8)

                Text(desc)
                    .font(.system(size: 10, weight: .regular))
                    .foregroundStyle(.white.opacity(0.7))
                    .lineLimit(1)
            }
        }
        .padding(12)
        .frame(maxWidth: .infinity, minHeight: 95, alignment: .leading)
        .background(Color("primaryLight"))
        .foregroundStyle(.white)
        .clipShape(RoundedRectangle(cornerRadius: 14))
    }
}

#Preview {
    AppointmentInfoCard(
        title: "Mon, 11 June 2024",
        desc: "Appointments Date",
        icon: "calendar"
    )
}
