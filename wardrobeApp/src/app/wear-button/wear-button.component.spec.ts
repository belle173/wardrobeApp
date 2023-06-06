import { ComponentFixture, TestBed } from '@angular/core/testing';

import { WearButtonComponent } from './wear-button.component';

describe('WearButtonComponent', () => {
  let component: WearButtonComponent;
  let fixture: ComponentFixture<WearButtonComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ WearButtonComponent ]
    })
    .compileComponents();
  });

  beforeEach(() => {
    fixture = TestBed.createComponent(WearButtonComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
