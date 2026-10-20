import SwiftUI

struct UpcomingAppointmentCardView: View {

    private var upcomingAppointmentCardFooter: some View {
        HStack(spacing: 8) {
            HStack(spacing: 8) {
                Image("doctor")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 42, height: 42)
                    .background(Color("background"))
                    .clipShape(Circle())

                VStack(alignment: .leading, spacing: 5) {
                    Text("Dr. Strange Walker")
                        .font(.system(size: 14, weight: .bold))
                        .foregroundStyle(Color("textPrimary"))
                        .lineLimit(1)
                        .minimumScaleFactor(0.8)

                    Text("Internist Specialist Doctor")
                        .font(.system(size: 12, weight: .regular))
                        .foregroundStyle(Color("textSecondary"))
                        .lineLimit(1)
                        .minimumScaleFactor(0.8)
                }
            }

            Spacer(minLength: 4)

            Image(systemName: "bubble.left.ellipsis")
                .font(.system(size: 20, weight: .regular))
                .foregroundStyle(Color("textPrimary"))
        }
        .padding(12)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color("surface"))
        .clipShape(RoundedRectangle(cornerRadius: 14))
    }

    private var upcomingAppointmentCardMain: some View {
        HStack(spacing: 16) {

            // Card 1
            AppointmentInfoCard(title: "Mon, 11 June 2024", desc: "Appointments Date", icon: "calendar")

            // Card 2
            AppointmentInfoCard(title: "08:00 - 12:00", desc: "Appointments Time", icon: "clock")
        }
    }

    private var upcomingAppointmentCardHeader: some View {
        HStack {
            Text("Upcoming Appointments")
                .font(.system(size: 16, weight: .bold))
                .foregroundStyle(.white)

            Spacer()

            Image(systemName: "chevron.right")
                .font(.system(size: 18, weight: .medium))
                .foregroundStyle(.white)
        }
        .frame(maxWidth: .infinity)
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            upcomingAppointmentCardHeader
            upcomingAppointmentCardMain
            upcomingAppointmentCardFooter
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 18)
        .frame(maxWidth: .infinity)
        .background(Color("primary"))
        .clipShape(RoundedRectangle(cornerRadius: 24))
    }
}

#Preview {
    UpcomingAppointmentCardView()
}
