describe("LTS Demo Test 1will always pass", function() {
	it("True is always true", function() {
		expect(true).toBe(true);
	});
});

describe("Lightning Component Testing Examples", function() {

    afterEach(function() {
        $T.clearRenderedTestComponents();
    });

    describe('Rendering c:ltsComp', function(){
        it('String contains text', function(done) {
            $T.createComponent("c:ltsComp", {}, true)
            .then(function(component) {
                expect(component.get('v.myName')).toContain("Rahul");
                done();
            }).catch(function(e) {
                done.fail(e);
            });
        });
    });
});