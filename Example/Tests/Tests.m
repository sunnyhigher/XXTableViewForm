//
//  XXTableViewFormTests.m
//  XXTableViewFormTests
//
//  Created by 段新瑞 on 04/29/2025.
//  Copyright (c) 2025 段新瑞. All rights reserved.
//

// https://github.com/kiwi-bdd/Kiwi

SPEC_BEGIN(InitialTests)

describe(@"InitialTests", ^{

  context(@"will fail", ^{

      it(@"can do maths", ^{
          [[@1 should] equal:@2];
      });

      it(@"can read", ^{
          [[@"number" should] equal:@"string"];
      });
    
      it(@"will wait and fail", ^{
          NSObject *object = [[NSObject alloc] init];
          [[expectFutureValue(object) shouldEventually] receive:@selector(autoContentAccessingProxy)];
      });
  });

  context(@"will pass", ^{
    
      it(@"can do maths", ^{
        [[@1 should] beLessThan:@23];
      });
    
      it(@"can read", ^{
          [[@"team" shouldNot] containString:@"I"];
      });  
  });
  
});

SPEC_END

