
import SwiftUI

struct DoctorView: View {

    var body: some View {
        ScrollView {
            VStack(spacing: 50) {
                UpcomingAppointmentCardView()
                DoctorProfileCardView()
                DoctorProfileCard2View()
            }
        }
        .padding(20)
        .background(Color.background.opacity(0.4))
    }
}

#Preview {
    DoctorView()
}
