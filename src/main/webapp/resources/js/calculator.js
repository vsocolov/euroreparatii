(function ($) {
    "use strict";

    var calculator = {
        navSelector: 'li#navbar-reparation a',
        allNavSelector: '.navbar-nav li',
        configUrl: '/reparation/calculator/config',
        currencyFormat: '0,0',
        calcConfig: {
            basePrice: 750,
            houseTypeNew: 1,
            houseTypeOld: 1.05,
            spaceTypeApartment: 1,
            spaceTypeOffice: 0.75,
            spaceTypeCottage: 1,
            reparationTypeStandard: 1,
            reparationTypeBusinessClass: 1.3,
            consumablesPrice: 500,
            decorationMaterialsPrice: 500
        },
        houseTypeSelector: "select#houseType",
        spaceAreaSelector: "input#spaceArea",
        spaceTypeSelector: "select#spaceType",
        reparationTypeSelector: "select#reparationType",
        estimatedCostsSelector: "em#estimatedCosts",
        consumablesSelector: "em#consumables",
        totalPriceSelector: "em#totalPrice",
        decorationMaterialsSelector: "em#decorationMaterials",
        grandTotalSelector: "em#grandTotal",

        init: function () {
            calculator.selectNavigationCategory();
            calculator.recalculate();

            $(calculator.houseTypeSelector).change(calculator.recalculate);
            $(calculator.spaceTypeSelector).change(calculator.recalculate);
            $(calculator.reparationTypeSelector).change(calculator.recalculate);
            $(calculator.spaceAreaSelector).on("blur", calculator.recalculate);
        },

        selectNavigationCategory: function() {
            $(calculator.allNavSelector).removeClass('active');
            $(calculator.navSelector).addClass('active');
        },

        recalculate: function () {
            var houseType = $(calculator.houseTypeSelector).val();
            var spaceType = $(calculator.spaceTypeSelector).val();
            var reparationType = $(calculator.reparationTypeSelector).val();
            var spaceArea = $(calculator.spaceAreaSelector).val();
            var consumables = calculator.calcConfig.consumablesPrice * spaceArea;
            var decorationMaterials = calculator.calcConfig.decorationMaterialsPrice * spaceArea;

            var estimatedCosts = (calculator.calcConfig.basePrice + calculator.calcConfig.consumablesPrice) * spaceArea;
            estimatedCosts *= houseType === '1' ? calculator.calcConfig.houseTypeOld : calculator.calcConfig.houseTypeNew;

            switch (spaceType) {
                case '1':
                    estimatedCosts *= calculator.calcConfig.spaceTypeApartment;
                    break;
                case '2':
                    estimatedCosts *= calculator.calcConfig.spaceTypeOffice;
                    break;
                default:
                    estimatedCosts *= calculator.calcConfig.spaceTypeCottage;
            }

            estimatedCosts *= reparationType === '1' ? calculator.calcConfig.reparationTypeStandard
                : calculator.calcConfig.reparationTypeBusinessClass;

            $(calculator.consumablesSelector).text(numeral(consumables).format('0,0'));
            $(calculator.decorationMaterialsSelector).text(numeral(decorationMaterials).format('0,0'));
            $(calculator.estimatedCostsSelector).text(numeral(estimatedCosts).format('0,0'));
            $(calculator.totalPriceSelector).text(numeral(estimatedCosts + consumables).format('0,0'));
            $(calculator.grandTotalSelector).text(numeral(estimatedCosts + consumables + decorationMaterials).format('0,0'));
        }
    };

    $.fn.ready(function () {
        calculator.init();
    });

})(jQuery);