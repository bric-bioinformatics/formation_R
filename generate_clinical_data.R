n <- 10000

set.seed(123)
clinical_data <- data.frame(
  patient_id = 1:n,
  age = sample(20:90, n, replace = TRUE),
  gender = sample(c("Male", "Female"), n, replace = TRUE),
  weight = sample(50:110, n, replace = TRUE),
  height = round(runif(n, min = 1.5, max = 1.9),2),
  blood_pressure_systolic = round(rnorm(n, 120, 15)),  # mean 120, sd 15
  blood_pressure_diastolic = round(rnorm(n, 80, 10)),  # mean 80, sd 10
  cholesterol = round(rnorm(n, 200, 50)),  # mean 200, sd 50
  glucose = round(rnorm(n, 100, 20)),  # mean 100, sd 20
  heart_rate = round(rnorm(n, 70, 10)),  # mean 70 bpm, sd 10
  smoking_status = sample(c("Smoker", "Non-Smoker"), n, replace = TRUE),
  treatment_group = sample(c("Control", "Drug A", "Drug B"), n, replace = TRUE),
  treatment_response = sample(c("Improved", "No Change", "Worsened"), n, replace = TRUE),
  hospital_visits_last_year = sample(0:10, n, replace = TRUE),
  diagnosis = sample(c("Hypertension", "Diabetes", "Heart Disease", "None"), n, replace = TRUE)
)
