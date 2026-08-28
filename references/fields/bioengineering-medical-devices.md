# Field Layer: Bioengineering & Medical Devices

Covers biomedical device development, biomaterials, tissue engineering, and
biomechanics. The distinctive feature: work progresses through a
**validation pipeline** — bench, then preclinical, then clinical — and each
stage licenses different claims. Most overclaiming here comes from stating a
later-stage conclusion on earlier-stage evidence.

## Know which stage the evidence is at

- **Bench/in vitro**: the device functions under controlled conditions.
  Supports feasibility claims only.
- **Preclinical/animal**: it works in a living system. Supports safety and
  plausibility, not clinical benefit — see
  `pharmacology-drug-development.md` for animal study rigor (randomization,
  blinding, sample size, correct experimental unit).
- **Clinical**: it works in patients. Requires the full apparatus in
  `clinical-biomedical.md` — registration, CONSORT, clinically meaningful
  endpoints.

A benchtop or cadaveric result described in clinical-benefit language is the
characteristic error. Name it directly.

## Verification and validation

Borrow the distinction from `numerical-analysis.md`, which is formalized in
device regulation:
- **Verification**: does the device meet its design specifications?
- **Validation**: does it meet the user's actual clinical need?

A device can pass verification completely and fail validation. State which
was done and against what specification.

## Testing rigor

- **Sample size and specimen source**: how many devices, and how many
  independent manufacturing batches? Testing many specimens from one batch
  characterizes that batch. For cadaveric or tissue work, report donor
  number, age, sex, and preservation method — these dominate mechanical
  properties.
- **Standards**: where a recognized test standard exists (ISO 10993 for
  biocompatibility, ASTM mechanical standards, IEC 60601 for electrical
  safety), use it and cite it. Deviating from a standard method makes
  results non-comparable and needs justification.
- **Physiological realism**: test conditions should reflect use — hydrated,
  37°C, physiological loading, relevant fluid environment, and cyclic
  loading to a clinically relevant cycle count for implants. Room-temperature
  dry testing of an implant is a screening result, not a performance claim.
- **Failure modes and limits**, not just nominal performance. Report where
  and how the device fails (Standing Rule 6).
- Report sterilization method and its effect — sterilization changes
  polymer and biologic properties, and testing unsterilized devices
  overstates performance.

## Biomaterials and tissue engineering

- Cell source, passage number, donor variability, and culture conditions all
  affect results and must be reported; results from an immortalized line are
  not results from primary cells.
- Use enough biological replicates (independent donors or animals) to
  support the claim; technical replicates are not n
  (`pharmacology-drug-development.md`).
- Degradation and long-term behavior belong with the initial performance
  data for anything implantable.
- Scaffold characterization (porosity, pore size, modulus, degradation rate)
  should be quantitative, with the method stated.

## Human factors and usability

- Device use errors are a leading source of clinical harm, and usability
  engineering (IEC 62366) is a regulatory requirement, not an optional
  extra. Studies should involve representative users in realistic
  conditions, not engineers operating their own device
  (`human-computer-interaction.md`).
- Report training provided — a device usable only after extensive training
  by its designers is a different result.

## Regulatory and ethical context

- State the intended regulatory pathway where relevant (510(k), De Novo,
  PMA in the US; MDR class in the EU) — it clarifies what evidence is
  actually needed and signals awareness of translation requirements.
- Clinical investigations of devices require regulatory approval in addition
  to IRB, and trial registration.
- Animal work requires IACUC or equivalent approval and ARRIVE reporting.
- Conflicts of interest are pervasive in device research — founder equity,
  patents, and company funding must be disclosed specifically. Surgeon-
  inventors reporting on their own devices should be identified as such.

## Publication norms

- Journals: Annals of Biomedical Engineering, Biomaterials, Journal of
  Biomechanics, IEEE TBME, Science Translational Medicine, Nature
  Biomedical Engineering.
- Preprints (bioRxiv, medRxiv) accepted at most venues.
- Design files and analysis code increasingly shared; patent status may
  constrain what can be released, and that constraint should be stated.

## Red flags

- Benchtop or cadaveric results described in clinical-benefit language
- Devices from a single manufacturing batch supporting a general claim
- Mechanical testing under non-physiological conditions
- Sterilization effects on material properties untested
- Surgeon-inventor evaluating their own device with no COI statement
