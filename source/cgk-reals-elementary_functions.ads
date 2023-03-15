--
--  Copyright (C) 2023, Vadim Godunko <vgodunko@gmail.com>
--
--  SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
--

with Ada.Numerics.Generic_Elementary_Functions;

package CGK.Reals.Elementary_Functions is
  new Ada.Numerics.Generic_Elementary_Functions (Real);
pragma Pure (CGK.Reals.Elementary_Functions);
