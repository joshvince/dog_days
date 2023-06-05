module MedicinesHelper
  def dose_options
    Medicine.all.map { |medicine| [medicine.name, medicine.id] }
  end
end
