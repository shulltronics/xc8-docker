#include <xc.h>

typedef enum {
    PA,
    PB,
    PC,
    PD,
    PE
} port_t;

typedef enum {
    PIN0,
    PIN1,
    PIN2,
    PIN3,
    PIN4,
    PIN5,
    PIN6,
    PIN7
} pin_t;

typedef struct {
    port_t port;
    pin_t  pin;
} port_pin_t;

void set_pin_mode(port_pin_t);
