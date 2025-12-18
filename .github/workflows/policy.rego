package ai_governance

default allow = false

fairness_gap = input.fairness_gap
dp_ratio = input.dp_ratio
explanation_stability = input.explanation_stability

violation[msg] {
  fairness_gap > 0.05
  msg = "Fairness gap exceeds threshold 0.05"
}

violation[msg] {
  dp_ratio < 0.8
  msg = "Demographic parity ratio is below 0.8"
}

violation[msg] {
  explanation_stability < 0.9
  msg = "Explanation stability is below 0.9"
}

allow {
  not violation[_]
}
