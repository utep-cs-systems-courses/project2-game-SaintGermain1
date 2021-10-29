#include <msp430.h>

#include "stateMachines.h"

#include "buzzer.h"

void state_advance()/* alternate between toggling red & green */

{
  unsigned char note_changed = 0;

  static enum {C1, C2, Bf1, C3, G1, G2, C4, F1, E1, C5} note = C1;
  switch (note_changed)  {
  case 0: buzzer_set_period(1911);note_changed = 1;break;
  case 1: buzzer_set_period(5102);note_changed = 2;break;
  case 2: buzzer_set_period(2145);note_changed = 3;break;
  }
}
